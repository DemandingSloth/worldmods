--[[
        ys_sfx
        YshinKharu - 10-13-2022

        Provides a custom sound table, as well as
        fixes some nodes to use more logical sounds

        GitLab: https://gitlab.com/YshinKharu/ys_voxel

        Licensed under ICCLEIYSIUYA.
        http://www.evvk.com/evvktvh.html
--]]



-- fix all grass types to use snappy, not crumbly
-- does not add them to group:snappy
-- also fixes an issue where other grass sounds are amplified
local types_grass = {
        "default:dirt_with_grass",
        "default:dirt_with_coniferous_litter",
        "default:dirt_with_rainforest_litter",
        "default:dirt_with_dry_grass",
        "default:dry_dirt_with_dry_grass"
}

for _, w in pairs(types_grass) do
        minetest.override_item(w, {
                sounds = ys_sfx.node_sound_leaves_defaults()
        })
end


-- make snow dirt use its own sounds
minetest.override_item("default:dirt_with_snow", {
        sounds = ys_sfx.node_sound_snowygrass_defaults()
})


-- make bones:bones use nothing
if minetest.get_modpath("bones") then
minetest.override_item("bones:bones", {
        sounds = ys_sfx.node_sound_defaults()
})
end


-- pre-5.4.0, glass sounds like wood
minetest.override_item("default:glass", {
	sounds = ys_sfx.node_sound_glass_defaults()
})


-- pre-5.4.0, gravel-type uses crumbly
local types_rocks = {"default:gravel", "default:permafrost_with_stones"}

for _, q in pairs(types_rocks) do
        minetest.override_item(q , {
                sounds = ys_sfx.node_sound_gravel_defaults()
        })
end


-- pre-5.4.0, trees only use "choppy" with axes
local types_tree = {
        "default:tree",
        "default:aspen_tree",
        "default:pine_tree",
        "default:acacia_tree",
        "default:jungletree"
}

local types_wood = {
        "default:wood",
        "default:aspen_wood",
        "default:pine_wood",
        "default:acacia_wood",
        "default:junglewood"
}

for a, e in pairs(types_tree) do
        minetest.override_item(e , {
                sounds = ys_sfx.node_sound_wood_defaults()
        })
end

for i, o in pairs(types_wood) do
        minetest.override_item(o , {
                sounds = ys_sfx.node_sound_wood_defaults()
        })
end


-- pre-5.4.0, mimic old sand behaviour
local types_sand = {
        "default:sand",
        "default:desert_sand",
        "default:silver_sand"
}

for u, y in pairs(types_sand) do
        minetest.override_item(y , {
                sounds = ys_sfx.node_sound_sand_defaults()
        })
end
