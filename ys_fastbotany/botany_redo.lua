--[[
        ys_fastbotany
        YshinKharu - 10-09-2022

        Makes most plantlife and crops instantly break when dug.
        Useful for bulk harvesting crops very quickly.

        Code is subject to change; expect unprofessionalism & bugs.
        Licensed under ICCLEIYSIUYA.
        http://www.evvk.com/evvktvh.html
--]]


-- TenPlus1's Farming Redo
-- eggplant is unused
if minetest.get_modpath("farming") then

local r_p = {
        "artichoke_5",
        "asparagus_5",
        "barley_7",
        "beanpole_5",
        "beetroot_5",
        "blackberry_4",
        "blueberry_4",
        "cabbage_6",
        "carrot_8",
        "chili_8",
        "cocoa_4",
        "coffee_5",
        "corn_8",
        "cotton_8",
        "cucumber_4",
        "eggplant_4",
        "garlic_5",
        "grapes_8",
        "hemp_8",
        "lettuce_5",
        "mint_4",
        "onion_5",
        "parsley_3",
        "pea_5",
        "pepper_7",
        "pineapple_8",
        "potato_4",
        "raspberry_4",
        "rhubarb_4",
        "rice_8",
        "soy_7",
        "spinach_4",
        "sunflower_8",
        "tomato_8",
        "vanilla_8",
        "wheat_8",
        "rye_8",
        "oat_8",
}
local et = {"strawberry_8"}

    for _, f in pairs(r_p) do
        minetest.override_item("farming" .. ":" .. f , {
            groups = {
                dig_immediate = 3
            }
    })
    end
end


if minetest.get_modpath("ethereal") then
    for i, e in pairs(et) do
        minetest.override_item("ethereal" .. ":" .. e , {
            groups = { dig_immediate = 3 }
        })
    end
end


minetest.override_item("farming:pumpkin_8", {
	groups = {
		snappy = 3,
		choppy = 3,
		dig_immediate = 3,
		oddly_breakable_by_hand = 2,
		flammable = 2,
		plant = 1
	}
})


minetest.override_item("farming:melon_8", {
	groups = {
		snappy = 3,
		choppy = 3,
		dig_immediate = 3,
		oddly_breakable_by_hand = 2,
		flammable = 2,
		plant = 1
	}
})

