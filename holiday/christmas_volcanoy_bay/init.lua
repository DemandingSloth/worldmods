--christmas mod for minetest

--[[
Copyright (C) 2022 Joseph 'Tucker' Bamberg
This file is part of christmas_volcano_bay.
christmas_volcano_bay is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
Stats is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with christmas_volcano_bay.  If not, see <http://www.gnu.org/licenses/>.
]]

-- far from a complete mod use at your own risk

local load_time_start = os.clock()

local modpath = minetest.get_modpath('christmas_volcano_bay')

dofile(modpath..'/snowman.lua')
dofile(modpath..'/presents.lua')
dofile(modpath..'/food.lua')
dofile(modpath..'/wreaths.lua')
dofile(modpath..'/lights.lua')

minetest.log(
	'action',
	string.format(
		'['..minetest.get_current_modname()..'] loaded in %.3fs',
		os.clock() - load_time_start
	)
)
