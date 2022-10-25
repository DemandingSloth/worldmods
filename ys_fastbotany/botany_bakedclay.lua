--[[
        ys_fastbotany
        YshinKharu - 10-09-2022

        Makes most plantlife and crops instantly break when dug.
        Useful for bulk harvesting crops very quickly.

        GitLab: https://gitlab.com/YshinKharu/ys_voxel

        Code is subject to change; expect unprofessionalism & bugs.
        Licensed under ICCLEIYSIUYA.
        http://www.evvk.com/evvktvh.html
--]]

local flowers_bakedclay = {
    "lazarus",
    "delphinium",
    "thistle",
    "mannagrass",
}

if minetest.get_modpath("bakedclay") then
    for b, a in pairs(flowers_bakedclay) do
        minetest.override_item("bakedclay" .. ":" .. a , {
            groups = {
                snappy = 3,
                dig_immediate = 3,
                flora = 1,
                flower = 1,
                attached_node = 1
                     }
        })
    end
end                    
