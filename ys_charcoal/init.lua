--[[
        ys_charcoal
        YshinKharu - 10-13-2022

        Adds charcoal-related items as a coal alternative

        GitLab: https://gitlab.com/YshinKharu/ys_voxel

        Code is not final; expect unprofessionalism & bugs.
        Licensed under ICCLEIYSIUYA.
        http://www.evvk.com/evvktvh.html
--]]


--
-- reg_node
--
minetest.register_node("ys_charcoal:charcoalblock", {
        description = "Charcoal Block",
        drawtype = "allfaces",
        tiles = {"charcoalblock.png"},
        is_ground_content = false,
        groups = { cracky = 3, not_in_creative_inventory = 1, coal = 1 },
        sounds = default.node_sound_stone_defaults(),
})

--
-- end of reg_node
--


--
-- reg_item
--
minetest.register_craftitem("ys_charcoal:charcoal_lump", {
        description = "Charcoal Lump",
        inventory_image = "charcoal_lump.png",
	groups = { coal = 1 },
})

--
-- end of reg_item
--


--
-- reg_craft
--
chl = "ys_charcoal:charcoal_lump"

minetest.register_craft({
        type = "cooking",
        output = "ys_charcoal:charcoal_lump",
        recipe = "group:tree",
})

minetest.register_craft({
        type = "fuel",
        recipe = "ys_charcoal:charcoal_lump",
        burntime = 40,
})

--[[
minetest.register_craft({
        type = "fuel",
        recipe = "ys_charcoal:charcoalblock",
        burntime = 370,
})
--]]



minetest.register_craft({
        output = "default:torch 4",
        recipe = {
                { chl },
                {"group:stick"}
        }
})

minetest.register_craft({
	output = "dye:black",
	recipe = {
		{ chl }
	}
})

--[[
minetest.register_craft({
        output = "ys_charcoal:charcoalblock",
        recipe = {
                {chl, chl, chl},
                {chl, chl, chl},
                {chl, chl, chl}
        }
})


minetest.register_craft({
        type = "shapeless",
        output = "ys_charcoal:charcoal_lump 9",
        recipe = "ys_charcoal:charcoalblock"
})
--]]

--
-- end of reg_craft
--


--
-- override
--
minetest.override_item("default:coal_lump", {
        groups = { coal = 1 },
})


minetest.override_item("default:coalblock", {
        groups = { cracky = 3, coal = 1 },
})


minetest.override_item("default:stone_with_coal", {
	drop = {
		max_items = 1,
		items = {
			{items = {"default:coal_lump 2"}, rarity = 5},
			{items = {"default:coal_lump"}
		}
	}
}
})

--
-- end of override
--

-- allow charcoal to be ignited
if minetest.get_modpath("fire") then
minetest.override_item("ys_charcoal:charcoalblock", {
	after_destruct = function(pos)
		pos.y = pos.y + 1
		if minetest.get_node(pos).name == "fire:permanent_flame" then
			minetest.remove_node(pos)
		end
	end,
	on_ignite = function(pos)
		local flame_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
		if minetest.get_node(flame_pos).name == "air" then
			minetest.set_node(flame_pos, {name = "fire:permanent_flame"})
		end
	end
})
end

--EOF
