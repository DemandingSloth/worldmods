--[[
        ys_sfx
        YshinKharu - 10-13-2022

        Provides a custom sound table, as well as
        fixes some nodes to use more logical sounds

        GitLab: https://gitlab.com/YshinKharu/ys_voxel

        Licensed under ICCLEIYSIUYA.
        http://www.evvk.com/evvktvh.html
--]]


-- get the sound information
dofile(minetest.get_modpath("ys_sfx") .. "/" .. "sound_table.lua")

-- also include nodes
dofile(minetest.get_modpath("ys_sfx") .. "/" .. "change.lua")