--[[
        ys_sfx
        YshinKharu - 10-13-2022

        Provides a custom sound table, as well as
        fixing some nodes to use more logical sounds

        GitLab: https://gitlab.com/YshinKharu/ys_voxel

        Licensed under ICCLEIYSIUYA.
        http://www.evvk.com/evvktvh.html
--]]


ys_sfx = {}

-- dig_immediate
-- oddly_breakable_by_hand
function ys_sfx.node_sound_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "", gain = 1.0}
	table.dug = table.dug or
			{name = "default_dug_node", gain = 0.25}
	table.place = table.place or
			{name = "default_place_node_hard", gain = 1.0}
	return table
end


-- cracky
function ys_sfx.node_sound_stone_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_hard_footstep", gain = 0.2}
	table.dug = table.dug or
			{name = "default_hard_footstep", gain = 1.0}
	ys_sfx.node_sound_defaults(table)
	return table
end


-- crumbly
function ys_sfx.node_sound_dirt_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_dirt_footstep", gain = 0.5}
	table.dig = table.dig or
			{name = "default_dig_crumbly", gain = 0.4}
	table.dug = table.dug or
			{name = "default_dirt_footstep", gain = 1.0}
	table.place = table.place or
			{name = "default_place_node", gain = 1.0}
	ys_sfx.node_sound_defaults(table)
	return table
end


-- crumbly ??
function ys_sfx.node_sound_sand_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_sand_footstep", gain = 0.1}
	table.dug = table.dug or
			{name = "default_sand_footstep", gain = 0.3}
	table.place = table.place or
			{name = "default_place_node", gain = 1.0}
	ys_sfx.node_sound_defaults(table)
	return table
end


-- crumbly ??
function ys_sfx.node_sound_gravel_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_gravel_footstep", gain = 0.5}
	table.dig = table.dig or
			{name = "default_dig_crumbly", gain = 0.35}
	table.dug = table.dug or
			{name = "default_gravel_dug", gain = 1.0}
	table.place = table.place or
			{name = "default_place_node", gain = 1.0}
	ys_sfx.node_sound_defaults(table)
	return table
end


-- choppy
function ys_sfx.node_sound_wood_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_wood_footstep", gain = 0.15}
	--table.dig = table.dig or
	--		{name = "default_dig_choppy", gain = 0.4}
	table.dug = table.dug or
			{name = "default_wood_footstep", gain = 1.0}
	ys_sfx.node_sound_defaults(table)
	return table
end


-- snappy
function ys_sfx.node_sound_leaves_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_grass_footstep", gain = 0.15}
	table.dug = table.dug or
			{name = "default_dig_crumbly", gain = 0.4}
	table.dig = table.dig or
			{name = "default_dig_snappy", gain = 0.4}
	table.place = table.place or
			{name = "default_place_node", gain = 1.0}
	ys_sfx.node_sound_defaults(table)
	return table
end


-- cracky ???
function ys_sfx.node_sound_glass_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_glass_footstep", gain = 0.5}
	table.dig = table.dig or
			{name = "default_dig_oddly_breakable_by_hand", gain = 0.5}
	table.dug = table.dug or
			{name = "default_break_glass", gain = 1.0}
	ys_sfx.node_sound_defaults(table)
	return table
end


-- cracky ???
function ys_sfx.node_sound_ice_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_glass_footstep", gain = 0.3}
	table.dig = table.dig or
			{name = "default_dig_cracky", gain = 0.5}
	table.dug = table.dug or
			{name = "default_dig_cracky", gain = 1.0}
	ys_sfx.node_sound_defaults(table)
	return table
end


-- cracky ???
function ys_sfx.node_sound_metal_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_metal_footstep", gain = 0.2}
	table.dig = table.dig or
			{name = "default_dig_metal", gain = 0.5}
	table.dug = table.dug or
			{name = "default_dug_metal", gain = 0.5}
	table.place = table.place or
			{name = "default_place_node_metal", gain = 0.5}
	ys_sfx.node_sound_defaults(table)
	return table
end



function ys_sfx.node_sound_water_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_water_footstep", gain = 0.2}
	ys_sfx.node_sound_defaults(table)
	return table
end



function ys_sfx.node_sound_snow_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_snow_footstep", gain = 0.2}
	table.dig = table.dig or
			{name = "default_snow_footstep", gain = 0.3}
	table.dug = table.dug or
			{name = "default_snow_footstep", gain = 0.3}
	table.place = table.place or
			{name = "default_place_node", gain = 1.0}
	ys_sfx.node_sound_defaults(table)
	return table
end


function ys_sfx.node_sound_snowygrass_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_snow_footstep", gain = 0.2}
	table.dig = table.dig or
			{name = "default_snow_footstep", gain = 0.3}
	table.dug = table.dug or
			{name = "default_dig_snappy", gain = 0.3}
	table.place = table.place or
			{name = "default_place_node", gain = 1.0}
	ys_sfx.node_sound_defaults(table)
	return table
end
