local S = replacer.S
local api = replacer.api

api.replacer = {}

api.replacer.blacklist = { }

function api.replacer.blacklist_item(itemstring)
    api.replacer.blacklist[itemstring] = true
end

api.replacer.blacklist_item("")
api.replacer.blacklist_item("air")
api.replacer.blacklist_item("ignore")

function api.replacer.is_blacklisted(itemstring)
    return api.replacer.blacklist[itemstring] or not minetest.registered_items[itemstring]
end

function api.replacer.check_tool(toolstack)
    local tool_meta = toolstack:get_meta()
    local itemstring = tool_meta:get_string("itemstring")

    if api.replacer.is_blacklisted(itemstring) then
        tool_meta:set_string("itemstring", "")
        tool_meta:set_string("description", S("Replacer"))
        return false
    end

    return true
end

function api.replacer.can_dig(player, pos, node_name)
    local def = minetest.registered_items[node_name]
    if def and def.can_dig then
        return def.can_dig(pos, player)
    end

    local name = player:get_player_name()
    if minetest.is_creative_enabled(name) then
        return true
    end

    if not def then
        return false
    end

    return minetest.get_item_group(name, "unbreakable") == 0
end

function api.replacer.copy(toolstack, player, pointed_thing)
    if pointed_thing.type ~= "node" then
        return
    end

    local pos = pointed_thing.under
    local node = minetest.get_node(pos)
    if api.replacer.is_blacklisted(node.name) then
        replacer.tell(player, S("@1 cannot be used with the replacer", node.name))
        return
    end

    if not minetest.registered_items[node.name] then
        replacer.tell(player, S("@1 cannot be used with the replacer", node.name))
        return
    end

    local nodestack = ItemStack(node.name)
    local desc = replacer.util.get_description(nodestack)

    if not api.replacer.can_dig(player, pos, node.name) then
        replacer.tell(player, S("You cannot dig @1, so you cannot place it.", desc))
        return
    end

    local meta = toolstack:get_meta()
    meta:set_string("itemstring", node.name)
    meta:set_int("param2", node.param2)

    if node.param2 == 0 then
        meta:set_string(
            "description",
            table.concat({ S("Replacer"), desc, node.name}, "\n")
        )
    else
        meta:set_string(
            "description",
            table.concat({S("Replacer"), desc, ("%s param2=%i"):format(node.name, node.param2)}, "\n")
        )
    end

    return toolstack
end

function api.replacer.place(toolstack, player, pointed_thing)
    if pointed_thing.type ~= "node" then
        return
    end

    local meta = toolstack:get_meta()
    local itemstring = meta:get_string("itemstring")
    local param2 = meta:get_int("param2")

    if not api.replacer.check_tool(toolstack) then
        replacer.tell(player, S("Placement failed: replacer not configured. Use sneak+right-click to copy a node."))
        return
    end

    local player_name = player:get_player_name()
    local pos = pointed_thing.above
    if minetest.is_protected(pos, player_name) then
        replacer.tell(player, S("Placement failed: that location is protected."))
        minetest.record_protection_violation(pos, player_name)
        return
    end

    local itemstack = ItemStack(itemstring)
    local node_desc = replacer.util.get_description(itemstack)
    local player_inv = player:get_inventory()
    local is_creative = minetest.is_creative_enabled(player_name)

    if not is_creative then
        if not player_inv:contains_item("main", itemstack) then
            replacer.tell(player, S("Placement failed: you have no @1 in your inventory.", node_desc))
            return
        end
    end

    local def = minetest.registered_items[itemstring] or {}
    local leftover, placed_pos
    if def.on_place then
        leftover = def.on_place(itemstack, player, pointed_thing)
        placed_pos = pos
    else
        leftover, placed_pos = minetest.item_place_node(itemstack, player, pointed_thing)
    end

    if placed_pos and leftover and leftover:is_empty() then
        local placed_node = minetest.get_node(placed_pos)
        if placed_node.param2 ~= param2 then
            placed_node.param2 = param2
            minetest.swap_node(placed_pos, placed_node)
        end
        if not is_creative then
            local removed = player_inv:remove_item("main", ItemStack(itemstring))
            if removed:is_empty() then
                replacer.log("error", "failed to remove %s from %s's inventory", itemstring, player_name)
            else
                replacer.log("action", "removed %s from %s's inventory", itemstring, player_name)
            end
        end
        replacer.log("action", "%s placed %s @ %s", player_name, itemstring, minetest.pos_to_string(placed_pos))

    else
        replacer.log("action", "%s failed to place %s @ %s", player_name, itemstring, minetest.pos_to_string(pos))
    end
end

function api.replacer.replace(toolstack, player, pointed_thing)
    if pointed_thing.type ~= "node" then
        return
    end

    if not api.replacer.check_tool(toolstack) then
        replacer.tell(player, S("Replacement failed: replacer not configured. Use sneak+right-click to copy a node."))
        return
    end

    local player_name = player:get_player_name()
    local pos = pointed_thing.under

    if minetest.is_protected(pos, player_name) then
        replacer.tell(player, S("Replacement failed: that location is protected."))
        minetest.record_protection_violation(pos, player_name)
        return
    end

    local tool_meta = toolstack:get_meta()
    local to_place_name = tool_meta:get_string("itemstring")
    local to_place_param2 = tool_meta:get_int("param2")
    local to_place_stack = ItemStack(to_place_name)
    local to_place_desc = replacer.util.get_description(to_place_stack)
    local is_creative = minetest.is_creative_enabled(player_name)
    local player_inv = player:get_inventory()

    if not (is_creative or player_inv:contains_item("main", to_place_stack)) then
        replacer.tell(player, S("Replacement failed: you have no @1 in your inventory.", to_place_desc))
        return
    end

    local current_node = minetest.get_node(pos)
    local current_stack = ItemStack(current_node.name)
    local current_desc = replacer.util.get_description(current_stack)

    if api.replacer.is_blacklisted(current_node.name) then
        replacer.tell(player, S("Replacement failed: @1 cannot be replaced with the replacer.", current_desc))
        return
    end

    if not api.replacer.can_dig(player, pos, current_node.name) then
        replacer.tell(player, S("Replacement failed: you cannot dig @1.", current_desc))
        return
    end

    if current_node.name == to_place_name then
        if current_node.param2 ~= to_place_param2 then
            -- just tweak param2
            minetest.swap_node(pos, { name = to_place_name, param2 = to_place_param2 })
            replacer.log("action", "%s set param2=%s of %s @ %s",
                player_name, to_place_param2, to_place_name, minetest.pos_to_string(pos))
        end
        -- nothing to do
        return
    end

    local old_meta = minetest.get_meta(pos):to_table()
    local old_player_inventory = player_inv:get_list("main")

    local was_dug = minetest.node_dig(pos, current_node, player)
    if not was_dug then
        player_inv:set_list("main", old_player_inventory)
        replacer.tell(player, S("Replacement failed: digging failed for unknown reason."))
        return
    end

    local to_place_def = minetest.registered_items[to_place_name]

    local leftover, placed_pos
    if to_place_def.on_place then
        leftover = to_place_def.on_place(to_place_stack, player, pointed_thing)
        placed_pos = pos
    else
        leftover, placed_pos = minetest.item_place_node(to_place_stack, player, {
            type = "node",
            above = pos,
            under = pos
        })
    end

    if is_creative and placed_pos then
        player_inv:set_list("main", old_player_inventory)
        replacer.log("action", "%s (creative) replaced %s:%s with %s:%s @ %s",
            player_name, current_node.name, current_node.param2, to_place_name, to_place_param2,
            minetest.pos_to_string(placed_pos))

    elseif leftover and leftover:is_empty() and placed_pos then
        local placed_node = minetest.get_node(placed_pos)
        if placed_node.param2 ~= to_place_param2 then
            placed_node.param2 = to_place_param2
            minetest.swap_node(placed_pos, placed_node)
        end

        -- to_place_stack gets munged by item_place_node, for no good reason
        to_place_stack = ItemStack(to_place_name)
        local removed = player_inv:remove_item("main", to_place_stack)
        if removed:is_empty() then
            replacer.log("error", "failed to remove %s from %s's inventory", to_place_name, player_name)
        else
            replacer.log("action", "removed %s from %s's inventory", to_place_name, player_name)
        end

        replacer.log("action", "%s replaced %s:%s with %s:%s @ %s",
            player_name, current_node.name, current_node.param2, to_place_name, to_place_param2,
            minetest.pos_to_string(placed_pos))
    else
        -- failed to place, undo the break
        minetest.swap_node(pos, current_node)
        minetest.get_meta(pos):from_table(old_meta)
        player_inv:set_list("main", old_player_inventory)
        replacer.tell(player, S("Replacement failed: could not place @1", to_place_desc))
    end
end

function api.replacer.creative_replace(toolstack, player, pointed_thing)
    if pointed_thing.type ~= "node" then
        return
    end

    if not api.replacer.check_tool(toolstack) then
        replacer.tell(player, S("Replacement failed: replacer not configured. Use sneak+right-click to copy a node."))
        return
    end

    local player_name = player:get_player_name()
    local pos = pointed_thing.under

    if minetest.is_protected(pos, player_name) then
        replacer.tell(player, S("Replacement failed: that location is protected."))
        minetest.record_protection_violation(pos, player_name)
        return
    end

    local tool_meta = toolstack:get_meta()
    local to_place_name = tool_meta:get_string("itemstring")
    local to_place_param2 = tool_meta:get_int("param2")
    local to_place_stack = ItemStack(to_place_name)
    local to_place_desc = replacer.util.get_description(to_place_stack)

    local current_node = minetest.get_node(pos)
    local current_stack = ItemStack(current_node.name)
    local current_desc = replacer.util.get_description(current_stack)

    if api.replacer.is_blacklisted(current_node.name) then
        replacer.tell(player, S("Replacement failed: @1 cannot be replaced with the replacer.", current_desc))
        return
    end

    if not api.replacer.can_dig(player, pos, current_node.name) then
        replacer.tell(player, S("Replacement failed: you cannot dig @1.", current_desc))
        return
    end

    if current_node.name == to_place_name then
        if current_node.param2 ~= to_place_param2 then
            -- just tweak param2
            minetest.swap_node(pos, { name = to_place_name, param2 = to_place_param2 })
            replacer.log("action", "%s set param2=%s of %s @ %s",
                player_name, to_place_param2, to_place_name, minetest.pos_to_string(pos))
        end
        -- nothing to do
        return
    end

    local old_node_meta = minetest.get_meta(pos):to_table()
    local player_inv = player:get_inventory()
    local old_player_inventory = player_inv:get_list("main")

    local was_dug = minetest.node_dig(pos, current_node, player)
    player_inv:set_list("main", old_player_inventory)

    if not was_dug then
        minetest.remove_node(pos)
        if minetest.get_node(pos).name ~= "air" then
            replacer.tell(player, S("Replacement failed: removal failed for unknown reason."))
            return
        end
    end


    local to_place_def = minetest.registered_items[to_place_name]

    -- luacheck: ignore leftover
    local leftover, placed_pos
    if to_place_def.on_place then
        leftover = to_place_def.on_place(to_place_stack, player, pointed_thing)
        placed_pos = pos
    else
        leftover, placed_pos = minetest.item_place_node(to_place_stack, player, {
            type = "node",
            above = pos,
            under = pos
        })
    end

    if placed_pos then
        replacer.log("action", "%s (creative) replaced %s:%s with %s:%s @ %s",
            player_name, current_node.name, current_node.param2, to_place_name, to_place_param2,
            minetest.pos_to_string(placed_pos))

    else
        -- failed to place, undo the break
        minetest.set_node(pos, current_node)
        minetest.get_meta(pos):from_table(old_node_meta)
        replacer.tell(player, S("Replacement failed: could not place @1", to_place_desc))
    end
end
