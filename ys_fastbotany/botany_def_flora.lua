--[[
        ys_fastbotany
        YshinKharu - 10-09-2022

        Makes most plantlife and crops instantly break when dug.
        Useful for bulk harvesting crops very quickly.

        Forked from MrBertram's "Grass Instabreak":
        https://content.minetest.net/packages/MrBertram/grass_instabreak/
        (LGPL v2.1)

        Code is subject to change; expect unprofessionalism & bugs.
        Licensed under ICCLEIYSIUYA.
        http://www.evvk.com/evvktvh.html

--]]


-- Minetest Game ``flowers``
if(minetest.get_modpath("flowers")) ~= nil then
local fl = {"rose", "tulip", "tulip_black", "dandelion_yellow", "dandelion_white", "chrysanthemum_green", "geranium", "viola", "mushroom_red", "mushroom_brown", "waterlily", "waterlily_waving"}

for a, e in pairs(fl) do
        minetest.override_item("flowers" .. ":" .. e , {groups = {snappy = 3, dig_immediate = 3, flower = 1, flora = 1, attached_node = 1}}) 

end
end

minetest.override_item("flowers:mushroom_red", {
        groups = {
                snappy = 3,
                dig_immediate = 3,
                mushroom = 1,
                flammable = 1,
                attached_node = 1
        }
})

minetest.override_item("flowers:mushroom_brown", {
        groups = {
                snappy = 3,
                dig_immediate = 3,
                mushroom = 1,
                food_mushroom = 1,
                flammable = 1,
                attached_node = 1
        }
})
