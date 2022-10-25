--[[
        ys_oldtorch
        YshinKharu - 10-13-2022

        Brings back flat 2D torches as a separate node & item

        GitLab: https://gitlab.com/YshinKharu/ys_voxel

        Code is subject to change; expect unprofessionalism & bugs.
        Licensed under ICCLEIYSIUYA.
        http://www.evvk.com/evvktvh.html

--]]

-- Original code provided by minetest_game
-- default/torch.lua


minetest.register_node("ys_oldtorch:torch_on_floor", {
	description = "Old Torch",
	drawtype = "torchlike",
	inventory_image = "default_torch_on_floor.png",
	wield_image = "default_torch_on_floor.png",
	tiles = {{
		    name = "default_torch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	liquids_pointable = false,
	light_source = default.LIGHT_MAX - 3,
	groups = {choppy=2, dig_immediate=3, flammable=1, attached_node=1, torch=1, torch_old = 1},
	drop = "ys_oldtorch:torch_on_floor",
	selection_box = {
		type = "wallmounted",
		wall_bottom = {-1/8, -1/2, -1/8, 1/8, 2/16, 1/8},
	},
	sounds = default.node_sound_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		local under = pointed_thing.under
		local node = minetest.get_node(under)
		local def = minetest.registered_nodes[node.name]
		if def and def.on_rightclick and
			not (placer and placer:is_player() and
			placer:get_player_control().sneak) then
			return def.on_rightclick(under, node, placer, itemstack,
				pointed_thing) or itemstack
		end

		local above = pointed_thing.above
		local wdir = minetest.dir_to_wallmounted(vector.subtract(under, above))
		local fakestack = itemstack
		if wdir == 0 then
			fakestack:set_name("ys_oldtorch:torch_ceiling")
		elseif wdir == 1 then
			fakestack:set_name("ys_oldtorch:torch_on_floor")
		else
			fakestack:set_name("ys_oldtorch:torch_wall")
		end

		itemstack = minetest.item_place(fakestack, placer, pointed_thing, wdir)
		itemstack:set_name("ys_oldtorch:torch_on_floor")

		return itemstack
	end,
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})


minetest.register_node("ys_oldtorch:torch_wall", {
        drawtype = "torchlike",
	tiles = {{
                    name="default_torch_animated.png",
                    animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = default.LIGHT_MAX - 3,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1, torch_old = 1},
	drop = "ys_oldtorch:torch_on_floor",
	selection_box = {
		type = "wallmounted",
		wall_side = {-1/2, -1/2, -1/8, -1/8, 1/8, 1/8},
	},
        sounds = default.node_sound_defaults(),
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})


minetest.register_node("ys_oldtorch:torch_ceiling", {
        drawtype = "torchlike",
        tiles = {{
		    name="default_torch_on_ceiling_animated.png",
                    animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}
        }},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = default.LIGHT_MAX - 3,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1, torch_old = 1},
	drop = "ys_oldtorch:torch_on_floor",
	selection_box = {
		type = "wallmounted",
		wall_top = {-1/8, -1/16, -5/16, 1/8, 1/2, 1/8},
	},
        sounds = default.node_sound_defaults(),
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})


--[[
minetest.register_craftitem("ys_oldtorch:torch", {
        description = "Old Torch",
        inventory_image = "default_torch_on_floor.png",
})
--]]


minetest.register_craft({
	output = "ys_oldtorch:torch_on_floor 4",
	recipe = {
                {"default:torch", "default:torch"},
                {"default:torch", "default:torch"}
	}
})

minetest.register_craft({
        output = "default:torch 4",
        recipe = {
                {"ys_oldtorch:torch_on_floor", "ys_oldtorch:torch_on_floor"},
                {"ys_oldtorch:torch_on_floor", "ys_oldtorch:torch_on_floor"}
        }
})


minetest.register_craft({
	type = "fuel",
	recipe = "ys_oldtorch:torch_on_flor",
	burntime = 4,
})