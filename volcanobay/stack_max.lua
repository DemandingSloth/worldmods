big_stacks = {
	'default:cobble',
	'default:desert_cobble',
	'default:gravel',
	'default:sand',
	'default:sandstone',
	'default:stone',
	'default:desert_stone',
	'default:torch',
	'default:desert_sand',
	'default:silver_sand',
	'default:clay',
	'default:clay_lump',
	'default:clay_brick',
	'default:dirt',
	'default:papyrus',
	'default:paper',
	'default:acacia_leaves',
	'default:acacia_bush_leaves',
	'default:aspen_leaves',
	'default:jungleleaves',
	'default:leaves',
	'default:bush_leaves',
	'default:pine_needles',
	'default:stick',
	'default:cactus',
	'default:sapling',
	'default:aspen_sapling',
	'default:pine_sapling',
	'default:acacia_sapling',
	'default:junglesapling',
	'default:emergent_jungle_sapling',
	'default:bush_sapling',
	'default:acacia_bush_sapling',
	'default:pine_bush_sapling',
	'default:blueberry_bush_sapling',
	'default:large_cactus_seedling',
	'default:apple',
	'default:blueberries',
	'default:iron_lump',
	'default:gold_lump',
	'default:copper_lump',
	'default:steel_ingot',
	'default:gold_ingot',
	'default:copper_ingot',
	'default:glass',
	'default:coal_lump'
}

if minetest.get_modpath('farming_plus') then
	table.insert(big_stacks, 'farming:weed')
end

if minetest.get_modpath("farming") then
	table.insert(big_stacks, "farming:seed_wheat")
	table.insert(big_stacks, "farming:seed_cotton")
	table.insert(big_stacks, "farming:wheat")
	table.insert(big_stacks, "farming:cotton")
	table.insert(big_stacks, "farming:string")
	table.insert(big_stacks, "farming:bread")
	table.insert(big_stacks, "farming:flour")
end

-- added by popopoka =)
if minetest.get_modpath("flowers") ~= nil then
	table.insert(big_stacks, "flowers:mushroom_brown")
	table.insert(big_stacks, "flowers:mushroom_red")
	table.insert(big_stacks, "flowers:rose")
	table.insert(big_stacks, "flowers:tulip")
	table.insert(big_stacks, "flowers:tulip_black")
	table.insert(big_stacks, "flowers:dandelion_yellow")
	table.insert(big_stacks, "flowers:dandelion_white")
	table.insert(big_stacks, "flowers:chrysanthemum_green")
	table.insert(big_stacks, "flowers:geranium")
	table.insert(big_stacks, "flowers:viola")
	table.insert(big_stacks, "flowers:waterlily")
	table.insert(big_stacks, "flowers:waterlily_waving")
end

if minetest.get_modpath("fireflies") then
	table.insert(big_stacks, "fireflies:firefly")
end

if minetest.get_modpath("butterflies") then
	table.insert(big_stacks, "butterflies:butterfly_white")
	table.insert(big_stacks, "butterflies:butterfly_red")
	table.insert(big_stacks, "butterflies:butterfly_violet")
end

if minetest.get_modpath("ys_edibles") ~= nil then
	table.insert(big_stacks, "ys_edibles:bread_apples")
	table.insert(big_stacks, "ys_edibles:bread_blueberries")
	table.insert(big_stacks, "ys_edibles:apples")
	table.insert(big_stacks, "ys_edibles:blueberries")
end

if minetest.get_modpath("ys_oldtorch") ~= nil then
	table.insert(big_stacks, "ys_oldtorch:torch_on_floor")
end

if minetest.get_modpath("xdecor") then
	table.insert(big_stacks, "xdecor:honey")
end


if minetest.get_modpath("bakedclay") then
	table.insert(big_stacks, "bakedclay:lazarus")
	table.insert(big_stacks, "bakedclay:delphanium")
	table.insert(big_stacks, "bakedclay:thistle")
	--claynodes	-- include a future list of blocks?
end

-- add a list for Farming Redo, excluding eggplant
-- TenPlus1 *really* should've renamed this...
-- maybe provide a way for us to rename the mod folder & use that?
-- if farming_redo then
if minetest.get_modpath("farming") ~= nil then
	table.insert(big_stacks, "farming:artichoke")
	table.insert(big_stacks, "farming:asparagus")
	table.insert(big_stacks, "farming:seed_barley")
	table.insert(big_stacks, "farming:barley")
	table.insert(big_stacks, "farming:beetroot")
	table.insert(big_stacks, "farming:blackberry")
	table.insert(big_stacks, "farming:blueberry")
	table.insert(big_stacks, "farming:cabbage")
	table.insert(big_stacks, "farming:carrot")
	table.insert(big_stacks, "farming:chili")
	table.insert(big_stacks, "farming:cocoa")
	table.insert(big_stacks, "farming:corn")
	table.insert(big_stacks, "farming:cucumber")
	table.insert(big_stacks, "farming:garlic")
	table.insert(big_stacks, "farming:lettuce")
	table.insert(big_stacks, "farming:melon")
	table.insert(big_stacks, "farming:mint")
	table.insert(big_stacks, "farming:onion")
	table.insert(big_stacks, "farming:parsley")
	table.insert(big_stacks, "farming:pea_pod")
	table.insert(big_stacks, "farming:pepper")
	table.insert(big_stacks, "farming:pineapple")
	table.insert(big_stacks, "farming:potato")
	table.insert(big_stacks, "farming:pumpkin")
	table.insert(big_stacks, "farming:raspberry")
	table.insert(big_stacks, "farming:rhubarb")
	table.insert(big_stacks, "farming:rice")
	table.insert(big_stacks, "farming:soy")
	table.insert(big_stacks, "farming:spinach")
	table.insert(big_stacks, "farming:sunflower")
	table.insert(big_stacks, "farming:tomato")
	table.insert(big_stacks, "farming:vanilla")
	table.insert(big_stacks, "farming:rye")
	table.insert(big_stacks, "farming_oat")
	
	table.insert(big_stacks, "farming:coffee_beans")
	table.insert(big_stacks, "farming:beans")
	table.insert(big_stacks, "farming:grapes")
	table.insert(big_stacks, "farming:seed_hemp")
	table.insert(big_stacks, "farming:hemp")
	table.insert(big_stacks, "farming:seed_sunflower")
	table.insert(big_stacks, "farming:seed_rye")

	table.insert(big_stacks, "farming:eggplant")
end


if moretrees then
	table.insert(big_stacks, 'moretrees:apple_tree_leaves')
	table.insert(big_stacks, 'moretrees:beech_leaves')
	table.insert(big_stacks, 'moretrees:birch_leaves')
	table.insert(big_stacks, 'moretrees:fir_leaves')
	table.insert(big_stacks, 'moretrees:fir_leaves_bright')
	table.insert(big_stacks, 'moretrees:jungletree_leaves_red')
	table.insert(big_stacks, 'moretrees:jungletree_leaves_yellow')
	table.insert(big_stacks, 'moretrees:oak_leaves')
	table.insert(big_stacks, 'moretrees:palm_leaves')
	table.insert(big_stacks, 'moretrees:rubber_tree_leaves')
	table.insert(big_stacks, 'moretrees:sequoia_leaves')
	table.insert(big_stacks, 'moretrees:spruce_leaves')
	table.insert(big_stacks, 'moretrees:willow_leaves')
end

-- not part of ``default`` !!
if minetest.get_modpath('snow') then
	table.insert(big_stacks, 'snow:leaves')
	table.insert(big_stacks, 'snow:needles')
end

--Stonework
table.insert(big_stacks, 'volcanobay:setts')

for _,item in ipairs(big_stacks) do
	if minetest.registered_items[item] then
		minetest.override_item(item, {
			stack_max = 495,
		})
	else
		minetest.log('warning','[volcanobay] '..item..' is not a registered item.')
	end
end
