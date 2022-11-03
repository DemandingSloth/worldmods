--christmas mod for minetest

--[[
Copyright (C) 2022 Joseph 'Tucker' Bamberg
This file is part of christmas_volcano_bay.
christmas_volcano_bay is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
Stats is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with christmas_volcano_bay.  If not, see <http://www.gnu.org/licenses/>.
]]

-- far from a complete mod use at your own risk


-- Snowman 
local watersource = 'default:water_source'
local waterflowing = 'default:water_flowing'

minetest.register_node('christmas_volcano_bay:snowman_head', {
	description = 'Snowman Head',
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	tiles = {
		'default_snow.png',
		'default_snow.png',
		'default_snow.png',
		'default_snow.png',
		'default_snow.png',
		'christmas_snowman_head_front.png'
	},
	node_box = {
		type = 'fixed',
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, 0.3125, 0.375}, -- NodeBox1
			{-0.4375, -0.4375, -0.4375, 0.4375, 0.25, 0.4375}, -- NodeBox2
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	groups = {cracky = 2, crumbly = 1, choppy = 2, oddly_breakable_by_hand = 3, melts = 1, icemaker = 1},
	after_destruct = function(pos, oldnode)
		--use group melts = 1 to 'melt' the snowman into a water source, then check for the water source after dug to make sure
		--it wasn't just dug
		if minetest.get_node(pos).name == watersource then
			--use 2 minetest.add_item calls because name = 'default:coal_lump 2' did not work.			
			minetest.add_item(pos, {name = 'default:coal_lump'})
			minetest.add_item(pos, {name = 'default:coal_lump'})
			-- check if Farming installed and give carrot back instead of stick
			if minetest.get_modpath('farming') then
				minetest.add_item(pos, {name = 'farming:carrot'})
			else
				minetest.add_item(pos, {name = 'default:stick'})
			end
			-- replace water_source with water_flowing after items are given. this replicates the snowman 'melting'
			minetest.add_node(pos, {name = waterflowing})
		end
	end,
})
	
minetest.register_node('christmas_volcano_bay:snowman_middle', {
	description = 'Snowman Middle',
	tiles = {
		'default_snow.png',
		'default_snow.png',
		'default_snow.png',
		'default_snow.png',
		'default_snow.png',
		'christmas_snowman_middle_buttons.png'
	},
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	node_box = {
		type = 'fixed',
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, 0.5, 0.375},
			{-0.4375, -0.4375, -0.4375, 0.4375, 0.4375, 0.4375},
			{-0.5, -0.375, -0.5, 0.5, 0.375, 0.5},
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	groups = {cracky = 2, crumbly = 1, choppy = 2, oddly_breakable_by_hand = 3, melts = 1, icemaker = 1},
	after_destruct = function(pos, oldnode)
		--use group melts = 1 to 'melt' the snowman into a water source, then check for the water source after dug to make sure
		--it wasn't just dug
		if minetest.get_node(pos).name == watersource then
			--use 3 minetest.add_item calls because name = 'default:coal_lump 3' did not work.			
			minetest.add_item(pos, {name = 'default:coal_lump'})
			minetest.add_item(pos, {name = 'default:coal_lump'})
			minetest.add_item(pos, {name = 'default:coal_lump'})
			-- replace water_source with water_flowing after items are given. this replicates the snowman 'melting'
			minetest.add_node(pos, {name = waterflowing})
		end
	end,
})

minetest.register_node('christmas_volcano_bay:snowman_bottom', {
	description = 'Snowman Bottom',
	tiles = {
		'default_snow.png',
		'default_snow.png',
		'default_snow.png',
		'default_snow.png',
		'default_snow.png',
		'default_snow.png',
	},
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	node_box = {
		type = 'fixed',
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, 0.5, 0.375},
			{-0.4375, -0.4375, -0.4375, 0.4375, 0.4375, 0.4375},
			{-0.5, -0.375, -0.5, 0.5, 0.375, 0.5}, 
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	groups = {cracky = 2, crumbly = 2, choppy = 2, oddly_breakable_by_hand = 2, melts = 1, icemaker = 1},

	-- snow will not replace with water_flowing on melt 2 like it should so we work around it until they fix it.
	after_destruct = function(pos, oldnode)
		if minetest.get_node(pos).name == watersource then
			minetest.add_node(pos, {name = waterflowing})
		end
	end,
})
--register craft recipes

-- check for farming and use carrot instead of stick

if minetest.get_modpath('farming') then
	minetest.register_craft({
		output = 'christmas_volcano_bay:snowman_head',
		recipe = {
			{'default:coal_lump', 'default:snow'            , 'default:coal_lump'},
			{'default:snow'     , 'farming:carrot'          , 'default:snow'     },
			{'default:snow'     , 'default:snow'            , 'default:snow'     },
		}
	})
else
	minetest.register_craft({
		output = 'christmas_volcano_bay:snowman_head',
		recipe = {
			{'default:coal_lump', 'default:snow' , 'default:coal_lump'},
			{'default:snow'     , 'default:stick', 'default:snow'     },
			{'default:snow'     , 'default:snow' , 'default:snow'     },
		}
	})
end


minetest.register_craft({
	output = 'christmas_volcano_bay:snowman_bottom',
	recipe = {
		{'default:snow', 'default:snow', 'default:snow'},
		{'default:snow', ''            , 'default:snow'},
		{'default:snow', 'default:snow', 'default:snow'},
	}
})


minetest.register_craft({
	output = 'christmas_volcano_bay:snowman_middle',
	recipe = {
		{'default:snow', 'default:coal_lump', 'default:snow'},
		{'default:snow', 'default:coal_lump', 'default:snow'},
		{'default:snow', 'default:coal_lump', 'default:snow'},
	}
})

