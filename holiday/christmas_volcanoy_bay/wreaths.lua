
minetest.register_node('christmas_volcano_bay:wreath_unlit', {
	tiles = {
		'wreath_tb.png',
		'wreath_tb.png',
		'wreath_tb.png',
		'wreath_tb.png',
		'wreath.png',
		'wreath.png'
	},
	groups = {oddly_breakable_by_hand = 3},
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	node_box = {
		type = 'fixed',
		fixed = {
			{-0.4375, -0.3125, 0.375, 0.4375, -0.1875, 0.5},
			{-0.5, -0.1875, 0.375, -0.1875, 0.1875, 0.5}, 
			{0.25, -0.1875, 0.375, 0.5, 0.1875, 0.5},
			{-0.375, 0.1875, 0.375, 0.4375, 0.3125, 0.5},
			{-0.3125, -0.25, 0.375, -0.125, -0.125, 0.5},
			{-0.25, 0.125, 0.375, -0.125, 0.25, 0.5}, 
			{0.125, 0.125, 0.375, 0.25, 0.1875, 0.5},
			{-0.1875, 0.1875, 0.375, 0.1875, 0.5, 0.5},
			{-0.1875, -0.5, 0.375, 0.1875, -0.25, 0.5},
			{0.3125, -0.375, 0.375, 0.375, 0.375, 0.5},
			{-0.375, -0.375, 0.375, -0.1875, 0.375, 0.5},
			{-0.375, -0.375, 0.375, -0.25, 0.375, 0.5}, 
			{-0.3125, -0.4375, 0.375, -0.1875, 0.4375, 0.5}, 
			{0.1875, -0.4375, 0.375, 0.3125, 0.4375, 0.5},
			{0.125, -0.125, 0.375, 0.25, -0.3125, 0.5},
			{-0.4375, -0.3125, 0.375, -0.1875, 0.3125, 0.5}, 
			{0.125, -0.375, 0.375, 0.1875, -0.125, 0.5}, 
		}
	},
	on_punch = function(pos, node, puncher)
		node.name = 'christmas_volcano_bay:wreath_lit'
		core.set_node( pos, node )
		nodeupdate( pos )
	end,
})

minetest.register_node('christmas_volcano_bay:wreath_lit', {
	tiles = {
		'wreath_tb.png',
		'wreath_tb.png',
		'wreath_tb.png',
		'wreath_tb.png',
		'wreath.png',
		'wreath.png'
	},
	groups = {oddly_breakable_by_hand = 3},
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	light_source = 6,
	node_box = {
		type = 'fixed',
		fixed = {
			{-0.4375, -0.3125, 0.375, 0.4375, -0.1875, 0.5},
			{-0.5, -0.1875, 0.375, -0.1875, 0.1875, 0.5}, 
			{0.25, -0.1875, 0.375, 0.5, 0.1875, 0.5},
			{-0.375, 0.1875, 0.375, 0.4375, 0.3125, 0.5},
			{-0.3125, -0.25, 0.375, -0.125, -0.125, 0.5},
			{-0.25, 0.125, 0.375, -0.125, 0.25, 0.5}, 
			{0.125, 0.125, 0.375, 0.25, 0.1875, 0.5},
			{-0.1875, 0.1875, 0.375, 0.1875, 0.5, 0.5},
			{-0.1875, -0.5, 0.375, 0.1875, -0.25, 0.5},
			{0.3125, -0.375, 0.375, 0.375, 0.375, 0.5},
			{-0.375, -0.375, 0.375, -0.1875, 0.375, 0.5},
			{-0.375, -0.375, 0.375, -0.25, 0.375, 0.5}, 
			{-0.3125, -0.4375, 0.375, -0.1875, 0.4375, 0.5}, 
			{0.1875, -0.4375, 0.375, 0.3125, 0.4375, 0.5},
			{0.125, -0.125, 0.375, 0.25, -0.3125, 0.5},
			{-0.4375, -0.3125, 0.375, -0.1875, 0.3125, 0.5}, 
			{0.125, -0.375, 0.375, 0.1875, -0.125, 0.5}, 
		}
	},
	on_punch = function(pos, node, puncher)
		node.name = 'christmas_volcano_bay:wreath_unlit'
		core.set_node( pos, node )
		nodeupdate( pos )
	end,
})

minetest.register_craft({
	output = 'christmas_volcano_bay:wreath_unlit',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves', },
		{'group:leaves', ''            , 'group:leaves', },
		{'group:leaves', 'group:leaves', 'group:leaves', },
	},
})

minetest.register_craft({
	output = 'christmas_volcano_bay:wreath_lit',
	recipe = {
		{'group:leaves', 'group:leaves' , 'group:leaves', },
		{'group:leaves', 'default:torch', 'group:leaves', },
		{'group:leaves', 'group:leaves' , 'group:leaves', },
	},
})
