--[[
        ys_fastbotany
        YshinKharu - 10-09-2022

        Makes most plantlife and crops instantly break when dug.
        Useful for bulk harvesting crops very quickly.

        Code is subject to change; expect unprofessionalism & bugs.
        Licensed under ICCLEIYSIUYA.
        http://www.evvk.com/evvktvh.html
--]]

-- enable minetest_game ``flowers`` ?
dofile(minetest.get_modpath("ys_fastbotany") .. "/" .. "botany_def_flora.lua")

-- allow minetest_game ``farming`` ?
dofile(minetest.get_modpath("ys_fastbotany") .. "/" .. "botany_def.lua")

-- bakedclay support
dofile(minetest.get_modpath("ys_fastbotany") .. "/" .. "botany_bakedclay.lua")

-- allow support for TenPlus1's Farming Redo ?
dofile(minetest.get_modpath("ys_fastbotany") .. "/" .. "botany_redo.lua")

-- Minetest Game ``default``
if (minetest.get_modpath("default")) ~= nil then
for v = 2,5 do
    minetest.override_item("default:grass_" .. v , {
        groups = {
            snappy = 3,
            dig_immediate = 3,
            flora = 1,
            attached_node = 1,
            grass = 1,
            flammable = 1,
            not_in_creative_inventory = 1
        }
})
end


for x = 2,5 do
    minetest.override_item("default:dry_grass_" .. x , {
        groups = {
            snappy = 3,
            flammable = 3,
            dig_immediate = 3,
            flora = 1,
            attached_node = 1,
            dry_grass = 1,
            not_in_creative_inventory = 1
        }
})
end


for z = 2,3 do
    minetest.override_item("default:fern_" .. z , {
        groups = {
            snappy = 3,
            flammable = 3,
            dig_immediate = 3,
            flora = 1,
            attached_node = 1,
            not_in_creative_inventory = 1
        }
})
end


for y = 2,3 do
    minetest.override_item("default:marram_grass_" .. y , {
        groups = {
            snappy = 3, 
            flammable = 3,
            dig_immediate = 3,
            attached_node = 1,
            not_in_creative_inventory = 1
        }
})
end


minetest.override_item("default:grass_1", {
    groups = {
        snappy = 3,
        dig_immediate = 3,
        flora = 1,
        attached_node = 1,
        grass = 1,
        flammable = 1
    }
})

minetest.override_item("default:dry_grass_1", {
    groups = {
        snappy = 3,
        flammable = 3,
        dig_immediate = 3,
        flora = 1,
        attached_node = 1,
        dry_grass = 1
    }
})

minetest.override_item("default:fern_1", {
    groups = {
        snappy = 3,
        flammable = 3,
        dig_immediate = 3,
        flora = 1,
        attached_node = 1
    }
})

minetest.override_item("default:marram_grass_1", {
    groups = {
        snappy = 3, 
        flammable = 3,
        dig_immediate = 3,
        attached_node = 1
    }
})


minetest.override_item("default:papyrus", {
    groups = {
        snappy = 3,
        dig_immediate = 3,
        flammable = 2
    }
})

minetest.override_item("default:dry_shrub", {
    groups = {
        snappy = 3,
        dig_immediate = 3,
        flammable = 2,
        attached_node = 1
    }
})

minetest.override_item("default:junglegrass", {
    groups = {
        snappy = 3,
        dig_immediate = 3,
        flora = 1,
        attached_node = 1,
        flammable = 1
        }
})
end
