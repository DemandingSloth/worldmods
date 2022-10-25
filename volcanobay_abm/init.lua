-- i added abms, i've tested them and they seem to work as they should
-- code provided by popopoka :-)
-- P.S. screw you Alex, look over your code next time.

--[[ 
	TODO:
	- only allow ABMs to work within a certain range
		- mapblocks of 16x16x16 are too large!
		- in rare cases, it's possible that ABMs will overpopulate a map
--]]


-- all plants will use delay_long & randomness

-- in seconds, how long it takes for something to happen
-- 3600 is 60 minutes
local delay_long = 3600
-- the chance of it happening
-- 1 = 100% chance for every 60 minutes
local randomness = 5000

-- find thing(s) to spread on
local types_crumbly = {
	"default:dirt_with_grass",
	"default:dirt_with_rainforest_litter",
	--"default:dirt_with_coniferous_litter",
}

-- things we want to spread
local can_grow = {
	"pepper_5",
	"pepper_6",
	"pepper_7",
	"eggplant_3",	-- eggplant is unobtainable, now it's possible
	"eggplant_4",
	"tomato_7",
	"tomato_8",
	"pea_4",
	"pea_5",
	"asparagus_4",	-- also unobtainable... what the heck??
	"asparagus_5",
	"spinach_3",	-- ...
	"spinach_4",
}

-- the abm
minetest.register_abm({
	label = "volcanobay_abm:plant_propagation",
	nodenames = types_crumbly,
	-- neighbors = 
	interval = delay_long,
	chance = randomness,
	catch_up = false,	-- don't make up for lost time, otherwise crops grow everywhere
	action = function(pos, node)
		pos.y = pos.y + 1	-- above not below
		if minetest.get_node(pos).name == "air" then	-- is there air?
			node.name = "farming:" .. can_grow[math.random(#can_grow)]		-- chooses at random
			minetest.set_node(pos, node)
		elseif minetest.get_node(pos).name ~= "air" then
			return		-- no air, do nothing
		end
	end
})

