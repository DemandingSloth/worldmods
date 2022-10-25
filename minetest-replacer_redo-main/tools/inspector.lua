local S = replacer.S

minetest.register_tool("replacer:inspector", {
    description = S("Replacer"),
    short_description = S("Replacer"),
    inventory_image = "replacer_inspector.png",
    liquids_pointable = true,

    on_use = function(_, player, pointed_thing)
        -- left click
        if not minetest.is_player(player) then
            return
        end

        if pointed_thing.type == "nothing" then
            replacer.tell(player, S("Nothing"))

        elseif pointed_thing.type == "node" then
            local pos = pointed_thing.under
            local node = minetest.get_node(pos)
            local desc = replacer.util.get_description(node.name)
            replacer.tell(player, S("Node @@@1: @2 param1=@3 param2=@4",
                minetest.pos_to_string(pos), desc, node.param1, node.param2)
            )

        elseif pointed_thing.type == "object" then
            local obj = pointed_thing.ref
            if not obj and obj.get_luaentity then
                return
            end
            local lua_obj = obj:get_luaentity()
            if not lua_obj then
                return
            end
            replacer.tell(player, S("Object: @1", lua_obj.name or S("Unknown object")))

        end
    end,
})

local stick = replacer.resources.materials.stick
local torch = replacer.resources.materials.torch

if stick and torch then
    minetest.register_craft({
        output = "replacer:inspector",
        type = "shaped",
        recipe = {
            {torch},
            {stick},
        }
    })
end
