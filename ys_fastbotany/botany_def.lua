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

-- Minetest Game ``farming``
local plants = {'wheat_8', 'cotton_8'}
--local age = {'_1', '_2', '_3', '_4', '_5', '_6', '_7', '_8'}

if (minetest.get_modpath("farming")) ~= nil then
        for _, cropstage in pairs(plants) do 
--for i, agenumber in pairs(age) do
	        minetest.override_item("farming" .. ":" .. cropstage ,{groups = {dig_immediate = 3}})
        end
end