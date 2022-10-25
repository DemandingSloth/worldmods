--[[
        ys_stack
        YshinKharu - 10-13-2022

        Set a max item limit for specific items

        GitLab: https://gitlab.com/YshinKharu/ys_voxel

        Licensed under ICCLEIYSIUYA.
        http://www.evvk.com/evvkvh.html
--]]

-- source:
-- https://github.com/DemandingSloth/volcanobay

-- set the maximum stack size of items in plus
-- don't use negatives, logical max is 65535
local size_max = 495


-- this is an option
local nyaaaaaaaaaaaaaa = minetest.get_modpath("nyancat")
local moretrees = minetest.get_modpath("moretrees")         -- https://content.minetest.net/packages/VanessaE/moretrees/
local moreores = minetest.get_modpath("moreores")
local farming_redo = minetest.get_modpath("farming")
local farming_plus = minetest.get_modpath("farming_plus")   -- https://github.com/PilzAdam/farming_plus
local snow = minetest.get_modpath("snow")                   -- https://github.com/Splizard/minetest-mod-snow
local bakedclay = minetest.get_modpath("bakedclay")
local xdecor = minetest.get_modpath("xdecor")
local bonemeal = minetest.get_modpath("bonemeal")
local mobs = minetest.get_modpath("mobs")
local mobs_animal = minetest.get_modpath("mobs_animal")
local eth = minetest.get_modpath("ethereal")

-- ys_voxel compatibility
local ys_edibles = minetest.get_modpath("ys_edibles")
local ys_charcoal = minetest.get_modpath("ys_charcoal")
local ys_oldtorch = minetest.get_modpath("ys_oldtorch")



-- minetest_game ``default``
local _table = {
  "default:cloud",        -- useless object
  "default:stone",
  "default:tree",
  "default:aspen_tree",
  "default:pine_tree",
  "default:acacia_tree",
  "default:jungletree",
  "default:wood",
  "default:aspen_wood",
  "default:pine_wood",
  "default:acacia_wood",
  "default:junglewood",
	'default:cobble',
  "default:mossycobble",
	'default:desert_cobble',
	'default:gravel',
	'default:sand',
	'default:desert_sand',
	'default:silver_sand',
	"default:sandstone",
	"default:silver_sandstone",
	"default:desert_sandstone",
	'default:clay',
	'default:dirt',
	'default:paper',
	'default:acacia_leaves',
	'default:acacia_bush_leaves',
	'default:aspen_leaves',
	'default:jungleleaves',
	'default:leaves',
	'default:bush_leaves',
	'default:pine_needles',
	"default:blueberry_bush_leaves",
	"default:blueberry_bush_leaves_with_berries",
	"default:pine_bush_needles",
  "default:brick",
  "default:stick",
  "default:sapling",
  "default:aspen_sapling",
  "default:pine_sapling",
  "default:acacia_sapling",
  "default:junglesapling",
  "default:emergent_jungle_sapling",
  "default:bush_sapling",
  "default:acacia_bush_sapling",
  "default:pine_bush_sapling",
  "default:blueberry_bush_sapling",
  "default:cactus",
  "default:large_cactus_seedling",
  "default:torch",
  "default:blueberries",
  "default:apple",
  "default:clay_lump",
  "default:copper_lump",
  "default:iron_lump",
  "default:gold_lump",
  "default:tin_lump",
  "default:mese",
  "default:mese_crystal",
  "default:mese_crystal_fragment",
  "default:diamond",
  "default:coal_lump",
  "default:copper_ingot",
  "default:steel_ingot",
  "default:gold_ingot",
  "default:bronze_ingot",
  "default:tin_ingot",
  "default:copperblock",
  "default:steelblock",
  "default:goldblock",
  "default:tinblock",
  "default:bronzeblock",
  "default:coalblock",
  "default:diamondblock",
  "default:dirt_with_grass",
  "default:dirt_with_coniferous_litter",
  "default:dirt_with_rainforest_litter",
  "default:dirt_with_dry_grass",
  "default:dry_dirt_with_dry_grass",
  "default:dirt_with_snow",
  "default:snow",
  "default:snowblock",
  "default:obsidian",
  "default:glass",
  "default:obsidian_glass",
  "default:chest",
  "default:chest_locked",
  "default:ladder_wood",
  "default:ladder_steel",
  "default:junglegrass",
  "default:dry_shrub",
  "default:papyrus",
  "default:furnace",
  "default:sign_wall_wood",
  "default:sign_wall_steel",
  "default:coral_skeleton",
  "default:book",
  "default:bookshelf",
  "default:flint",
}

local max_ = {
	"air",
}


local plus = _table
local include = table.insert

for a = 1, 5 do
  include(plus, "default:grass_" .. a)
  include(plus, "default:dry_grass_" .. a)
end

for e = 1,3 do
  include(plus, "default:marram_grass_" .. e)
  include(plus, "default:fern_" .. e)
end

-- minetest_game ``flowers``
if minetest.get_modpath("flowers") then
    include(plus, "flowers:mushroom_red")
    include(plus, "flowers:mushroom_brown")
    include(plus, "flowers:rose")
    include(plus, "flowers:tulip")
    include(plus, "flowers:tulip_black")
    include(plus, "flowers:dandelion_yellow")
    include(plus, "flowers:dandelion_white")
    include(plus, "flowers:chrysanthemum_green")
    include(plus, "flowers:geranium")
    include(plus, "flowers:viola")
    include(plus, "flowers:waterlily")
    include(plus, "flowers:waterlily_waving")
end


-- minetest_game ``dye``, minetest_game ``wool``
if minetest.get_modpath("dye") and minetest.get_modpath("wool") then
    local d = "dye:"
    local w = "wool:"
    local colors = {
        "black",
        "blue",
        "brown",
        "cyan",
        "dark_green",
        "dark_grey",
        "green",
        "grey",
        "magenta",
        "orange",
        "pink",
        "red",
        "violet",
        "white",
        "yellow",
}
    for a, e in pairs(colors) do
        include(plus, d .. e)
    end

    for i, o in pairs(colors) do
        include(plus, w .. o)
    end
end


-- minetest_game ``farming``
if minetest.get_modpath("farming") then
    include(plus, "farming:seed_wheat")
    include(plus, "farming:seed_cotton")
    include(plus, "farming:wheat")
    include(plus, "farming:cotton")
    include(plus, "farming:string")
    include(plus, "farming:bread")
end


-- minetest_game ``butterflies``
if minetest.get_modpath("butterflies") then
    include(plus, "butterflies:butterfly_red")
    include(plus, "butterflies:butterfly_white")
    include(plus, "butterflies:butterfly_violet")
end


-- minetest_game ``fireflies``
if minetest.get_modpath("fireflies") then
    include(plus, "fireflies:firefly")
end


-- minetest_game ``bones``
if minetest.get_modpath("bones") then
    include(plus, "bones:bones")
end


-- minetest_game ``xpanes``
if minetest.get_modpath("xpanes") then
    include(plus, "xpanes:pane")
    include(plus, "xpanes:bar")
    include(plus, "xpanes:obsidian_pane")
    include(plus, "xpanes:pane_flat")
    include(plus, "xpanes:bar_flat")
    include(plus, "xpanes:obsidian_pane_flat")
    include(plus, "xpanes:trapdoor_steel_bar")
end


-- minetest_game ``carts``
if minetest.get_modpath("carts") then
    include(plus, "carts:cart")
    include(plus, "carts:brakerail")
    include(plus, "carts:powerrail")
    include(plus, "carts:rail")
end


-- minetest_game ``boats``
if minetest.get_modpath("boats") then
    include(plus, "boats:boat")
end


-- minetest_game ``bucket``
if minetest.get_modpath("bucket") then
    include(plus, "bucket:bucket_empty")
end


-- minetest_game ``nyancat``
if nyaaaaaaaaaaaaaa then
    include(plus, "nyancat:nyancat")
    include(plus, "nyancat:nyancat_rainbow")
end


if farming_plus then
	  include(plus, 'farming:weed')
    include(plus, "farming_plus:banana_sapling")
    include(plus, "farming_plus:cocoa_sapling")
end


if moretrees then
	include(plus, 'moretrees:apple_tree_leaves')
	include(plus, 'moretrees:beech_leaves')
	include(plus, 'moretrees:birch_leaves')
	include(plus, 'moretrees:fir_leaves')
	include(plus, 'moretrees:fir_leaves_bright')
	include(plus, 'moretrees:jungletree_leaves_red')
	include(plus, 'moretrees:jungletree_leaves_yellow')
	include(plus, 'moretrees:oak_leaves')
	include(plus, 'moretrees:palm_leaves')
	include(plus, 'moretrees:rubber_tree_leaves')
	include(plus, 'moretrees:sequoia_leaves')
	include(plus, 'moretrees:spruce_leaves')
	include(plus, 'moretrees:willow_leaves')
end


if snow then
	include(plus, 'snow:leaves')
	include(plus, 'snow:needles')
end


if moreores then
    include(plus, "moreores:mithril_lump")
    include(plus, "moreores:mithril_ingot")
    include(plus, "moreores:mithril_block")
    include(plus, "moreores:silver_lump")
    include(plus, "moreores:silver_ingot")
    include(plus, "moreores:silver_block")
end


if bakedclay then
    include(plus, "bakedclay:lazarus")
    include(plus, "bakedclay:thistle")
    include(plus, "bakedclay:delphinium")
    include(plus, "bakedclay:mannagrass")
end


if xdecor then
    include(plus, "xdecor:honey")
    include(plus, "xdecor:hive")
    include(plus, "xdecor:ivy")
end


if bonemeal then
    include(plus, "bonemeal:bone")
    include(plus, "bonemeal:bonemeal")
    include(plus, "bonemeal:fertiliser")
    include(plus, "bonemeal:mulch")
end


if mobs and mobs_animal then
  include(plus, "mobs:honey")
  include(plus, "mobs:honey_block")
  include(plus, "mobs:beehive")
  include(plus, "mobs:meat_raw")
  include(plus, "mobs:meat")
  include(plus, "mobs:leather")
  include(plus, "mobs:mutton_raw")
  include(plus, "mobs:mutton_cooked")
  include(plus, "mobs:pork_raw")
  include(plus, "mobs:pork_cooked")
  include(plus, "mobs:rat_cooked")
  include(plus, "mobs:chicken_feather")
  include(plus, "mobs:fence_wood")
  include(plus, "mobs:fence_top")
  include(plus, "mobs_animal:bee")
  include(plus, "mobs_animal:rat")
end


-- https://content.minetest.net/packages/SFENCE/church
if minetest.get_modpath("church_candles") then
    include(plus, "church_candles:honey")
end


-- Farming Redo by TenPlus1
-- eggplant is unused
if farming_redo then
    include(plus, 'farming:artichoke')
    include(plus, "farming:asparagus")
    include(plus, "farming:barley")
    include(plus, "farming:seed_barley")
    include(plus, "farming:beans")
    include(plus, "farming:beetroot")
    include(plus, "farming:blackberry")
    include(plus, "farming:blueberries")
    include(plus, "farming:cabbage")
    include(plus, "farming:carrot")
    include(plus, "farming:chili_pepper")
    include(plus, "farming:cocoa_beans")
    include(plus, "farming:cocoa_beans_raw")
    include(plus, "farming:coffee_beans")
    include(plus, "farming:corn")
    include(plus, "farming:cucumber")
    include(plus, "farming:eggplant")
    include(plus, "farming:garlic")
    include(plus, "farming:grapes")
    include(plus, "farming:seed_hemp")
    include(plus, "farming:lettuce")
    include(plus, "farming:melon_8")
    include(plus, "farming:seed_mint")
    include(plus, "farming:onion")
    include(plus, "farming:parsley")
    include(plus, "farming:pea_pod")
    include(plus, "farming:peppercorn")
    include(plus, "farming:pepper")
    include(plus, "farming:pepper_yellow")
    include(plus, "farming:pepper_red")
    include(plus, "farming:pineapple")
    include(plus, "farming:potato")
    include(plus, "farming:baked_potato")
    include(plus, "farming:pumpkin_8")
    include(plus, "farming:raspberries")
    include(plus, "farming:rhubarb")
    include(plus, "farming:rice")
    include(plus, "farming:seed_rye")
    include(plus, "farming:rye")
    include(plus, "farming:seed_oat")
    include(plus, "farming:oat")
    include(plus, "farming:soy_pod")
    include(plus, "farming:spinach")
    include(plus, "farming:sunflower")
    include(plus, "farming:sunflower_seeds")
    include(plus, "farming:tomato")
    include(plus, "farming:vanilla")
    include(plus, "farming:salt")
    include(plus, "farming:bowl")
    include(plus, "farming:burger")
    include(plus, "farming:carrot_gold")
    include(plus, "farming:cheese_vegan")
    include(plus, "farming:cocoa_beans")
    include(plus, "farming:cocoa_beans_raw")
    include(plus, "farming:corn_cob")
    include(plus, "farming:garlic_clove")
    include(plus, "farming:hemp_leaf")
    include(plus, "farming:hemp_fibre")
    include(plus, "farming:melon_slice")
    include(plus, "farming:pumpkin_slice")
    include(plus, "farming:pineapple_top")
    include(plus, "farming:raspberries")
    include(plus, "farming:salt_crystal")
    include(plus, "farming:baking_tray")
    include(plus, "farming:mortar_pestle")
    include(plus, "farming:pot")
    include(plus, "farming:saucepan")
    include(plus, "farming:skillet")
    include(plus, "farming:chili_bowl")
    include(plus, "farming:beetroot_soup")
    include(plus, "farming:pea_soup")
    include(plus, "farming:tomato_soup")
    include(plus, "farming:cornstarch")
    include(plus, "farming:bibimbap")
    include(plus, "farming:porridge")
    include(plus, "farming:salad")
    include(plus, "farming:potato_salad")
    include(plus, "farming:onion_soup")
    include(plus, "farming:potato_omelet")
end

if eth then
    include(plus, "ethereal:strawberry")
end


-- ys_voxel
if ys_edibles then
    include(plus, "ys_edibles:apples")
    include(plus, "ys_edibles:blueberries")
    include(plus, "ys_edibles:bread_apple")
    include(plus, "ys_edibles:bread_blueberries")
    include(plus, "ys_edibles:apple_core")
    include(plus, "ys_edibles:apple_seeds")
end

if ys_oldtorch then
    include(plus, "ys_oldtorch:torch_on_floor")
end

if ys_charcoal then
    include(plus, "ys_charcoal:charcoal_lump")
    include(plus, "ys_charcoal:charcoalblock")
end


--Stonework
-- no modpath, can't be used. -popopoka
--include(plus, 'volcanobay:setts')



for _, item in ipairs(plus) do
	if minetest.registered_items[item] then
		minetest.override_item(item, {
		      stack_max = size_max
        })
	else
		minetest.log("warning", "" ..item.. " is not a registered item.")
	end
end


for z, highest in ipairs(max_) do
	if minetest.registered_items[highest] then
		minetest.override_item(highest, {
			stack_max = 65535
		})
	else
		minetest.log("warning", "" .. highest .. " is not a registered item.")
	end
end


-- sends a server message to stdout
print("[ys_stack] Mod loaded. Max item stacking size is " .. size_max .. "\n" .. "Source available @ https://gitlab.com/YshinKharu/ys_voxel")
