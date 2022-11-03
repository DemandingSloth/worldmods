-- Christmas Foods and cookies

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
]]--
-----------------------------
-- Register Cookie Cutters --
-----------------------------

minetest.register_craftitem('christmas_volcano_bay:candy_cane_cutter', {
	description = 'Candy Cane Cookie Cutter',
	inventory_image = 'christmas_candy_cane_cutter.png',
})

minetest.register_craftitem('christmas_volcano_bay:tree_cutter', {
	description = 'Christmas Tree Cookie Cutter',
	inventory_image = 'christmas_tree_cutter.png',
})

minetest.register_craftitem('christmas_volcano_bay:gingerbread_man_cutter', {
	description = 'Gingerbread Man Cookie Cutter',
	inventory_image = 'christmas_gingerbread_man_cutter.png',
})

minetest.register_craftitem('christmas_volcano_bay:star_cutter', {
	description = 'Star Cookie Cutter',
	inventory_image = 'christmas_star_cutter.png',
})

----------------------
-- Register Cookies --
----------------------

minetest.register_node('christmas_volcano_bay:candy_cane_cookie', {
	description = 'Candy Cane Cookie',
	inventory_image = 'christmas_candy_cane_cookie.png',
	on_use = minetest.item_eat(2),
	tiles = {
		'christmas_candy_cane_cookie2.png',
		'christmas_cookie.png',
		'christmas_cookie.png',
		'christmas_cookie.png',
		'christmas_cookie.png',
		'christmas_cookie.png'
	},
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	node_box = {
		type = 'fixed',
		fixed = {
			{-0.0625, -0.5, -0.125, 0.0625, -0.4375, 0.125}, 
			{-0.125, -0.5, -0.0625, 0.125, -0.4375, 0.0625}, 
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {-0.125, -0.5, -0.125, 0.125, -0.4375, 0.125}, 
	},
	groups = {dig_immediate = 3},
	on_rotate = screwdriver.rotate_simple,
})

minetest.register_node('christmas_volcano_bay:tree_cookie', {
	description = 'Christmas Tree Cookie',
	inventory_image = 'christmas_tree_cookie.png',
	on_use = minetest.item_eat(2),
	tiles = {
		'christmas_tree_cookie2.png',
		'christmas_cookie.png',
		'christmas_cookie.png',
		'christmas_cookie.png',
		'christmas_cookie.png',
		'christmas_cookie.png'
	},
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	node_box = {
		type = 'fixed',
		fixed = {
			{-0.0625, -0.5, -0.125, 0.0625, -0.4375, 0.125}, 
			{-0.125, -0.5, -0.0625, 0.125, -0.4375, 0.0625}, 
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {-0.125, -0.5, -0.125, 0.125, -0.4375, 0.125}, 
	},
	groups = {dig_immediate = 3},
	on_rotate = screwdriver.rotate_simple,

})



minetest.register_node('christmas_volcano_bay:gingerbread_man_cookie', {
	description = 'Gingerbread Man Cookie',
	inventory_image = 'christmas_gingerbread_man_cookie.png',
	on_use = minetest.item_eat(2),
	tiles = {
		'christmas_gingerbread_man_cookie2.png',
		'christmas_cookie.png',
		'christmas_cookie.png',
		'christmas_cookie.png',
		'christmas_cookie.png',
		'christmas_cookie.png'
	},
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	node_box = {
		type = 'fixed',
		fixed = {
			{-0.0625, -0.5, -0.125, 0.0625, -0.4375, 0.125}, 
			{-0.125, -0.5, -0.0625, 0.125, -0.4375, 0.0625}, 
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {-0.125, -0.5, -0.125, 0.125, -0.4375, 0.125}, 
	},
	groups = {dig_immediate = 3},
	on_rotate = screwdriver.rotate_simple,

})


minetest.register_node('christmas_volcano_bay:star_cookie', {
	description = 'Star Cookie',
	inventory_image = 'christmas_star_cookie.png',
	on_use = minetest.item_eat(2),
	tiles = {
		'christmas_star_cookie2.png',
		'christmas_cookie.png',
		'christmas_cookie.png',
		'christmas_cookie.png',
		'christmas_cookie.png',
		'christmas_cookie.png'
	},
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	node_box = {
		type = 'fixed',
		fixed = {
			{-0.0625, -0.5, -0.125, 0.0625, -0.4375, 0.125}, 
			{-0.125, -0.5, -0.0625, 0.125, -0.4375, 0.0625}, 
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {-0.125, -0.5, -0.125, 0.125, -0.4375, 0.125}, 
	},
	groups = {dig_immediate = 3},
	on_rotate = screwdriver.rotate_simple,

})

-----------------------
-- Register Yule Log --
-----------------------

minetest.register_craftitem('christmas_volcano_bay:yule_log', {
	description = 'Yule Log',
	inventory_image = 'christmas_yule_log.png',
	on_use = minetest.item_eat(4),
})

-------------------------------
-- Register Crafting Recipes --
-------------------------------

if minetest.get_modpath('moreores') then
	minetest.register_craft({
		output = 'christmas_volcano_bay:candy_cane_cutter',
		type = 'shapeless',
		recipe = {'moreores:tin_ingot'},
	})
else
	minetest.register_craft({
		output = 'christmas_volcano_bay:candy_cane_cutter',
		type = 'shapeless',
		recipe = {'default:steel_ingot'},
	})
end

minetest.register_craft({
	output = 'christmas_volcano_bay:tree_cutter',
	type = 'shapeless',
	recipe = {'christmas_volcano_bay:candy_cane_cutter'},
})

minetest.register_craft({
	output = 'christmas_volcano_bay:gingerbread_man_cutter',
	type = 'shapeless',
	recipe = {'christmas_volcano_bay:tree_cutter'},
})

minetest.register_craft({
	output = 'christmas_volcano_bay:star_cutter',
	type = 'shapeless',
	recipe = {'christmas_volcano_bay:gingerbread_man_cutter'},
})

minetest.register_craft({
	output = 'christmas_volcano_bay:candy_cane_cutter',
	type = 'shapeless',
	recipe = {'christmas_volcano_bay:star_cutter'},
})

minetest.register_craft({
	output = 'christmas_volcano_bay:candy_cane_cookie',
	type = 'shapeless',
	recipe = {'christmas_volcano_bay:candy_cane_cutter', 'mtfoods:cookies'},
	replacements = {
		{ 'christmas_volcano_bay:candy_cane_cutter', 'christmas_volcano_bay:candy_cane_cutter' }
	}
})
minetest.register_craft({
	output = 'christmas_volcano_bay:tree_cookie',
	type = 'shapeless',
	recipe = {'christmas_volcano_bay:tree_cutter', 'mtfoods:cookies'},
	replacements = {
		{ 'christmas_volcano_bay:tree_cutter', 'christmas_volcano_bay:tree_cutter' }
	}
})

minetest.register_craft({
	output = 'christmas_volcano_bay:gingerbread_man_cookie',
	type = 'shapeless',
	recipe = {'christmas_volcano_bay:gingerbread_man_cutter', 'mtfoods:cookies'},
	replacements = {
		{ 'christmas_volcano_bay:gingerbread_man_cutter', 'christmas_volcano_bay:gingerbread_man_cutter' }
	}

})

minetest.register_craft({
	output = 'christmas_volcano_bay:star_cookie',
	type = 'shapeless',
	recipe = {'christmas_volcano_bay:star_cutter', 'mtfoods:cookies'},
	replacements = {
		{ 'christmas_volcano_bay:star_cutter', 'christmas_volcano_bay:star_cutter' }
	}

})

minetest.register_craft({
	output = 'christmas_volcano_bay:yule_log',
	type = 'shapeless',
	recipe = {'mtfoods:chocolate_cake', 'mtfoods:cream'}
})

