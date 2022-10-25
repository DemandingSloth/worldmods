--[[
death_messages - A Minetest mod which sends a chat message when a player dies.
Copyright (C) 2016  EvergreenTree

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
--]]

-----------------------------------------------------------------------------------------------
local title = "Death Messages"
local version = "0.1.2"
local mname = "death_messages"
-----------------------------------------------------------------------------------------------
dofile(minetest.get_modpath("death_messages").."/settings.txt")
-----------------------------------------------------------------------------------------------

-- A table of quips for death messages.  The first item in each sub table is the
-- default message used when RANDOM_MESSAGES is disabled.
local messages = {}

-- Lava death messages
messages.lava = {
	" melted into a ball of fire.",
	" thought lava was cool.",
	" melted into a ball of fire.",
	" couldn't resist that warm glow of lava.",
	" dug straight down.",
	" didn't know lava was hot.",
	" saw something bright and got too close.",
	" touched something they were not supposed to.",
	" jumped into a volcano.",
	" couldn't best a volcano's warming glow.",
	" loved the radiating heat of a volcano.",
	" tried to outrun a volcanic eruption.",
	" became selfish for obsidian."
}

-- Drowning death messages
messages.water = {
	" drowned.",
	" ran out of air.",
	" failed at swimming lessons.",
	" tried to impersonate an anchor.",
	" forgot they weren't a fish.",
	" blew one too many bubbles.",
	" was slain by water using water.",
	" went swimming with the fishes.",
	" tried amateur scuba-diving.",
	" realized they lacked gills.",
	" fell into some water.",
	" tried to walk on water."

}

-- Burning death messages
messages.fire = {
	" burned to a crisp.",
	" got a little too warm.",
	" got too close to the camp fire.",
	" just got roasted, hotdog style.",
	" gout burned up. More light that way.",
	" wanted to be an arsonist.",
	" tried to use magic.",
	" went up in flames!",
	" was too poor to afford a barbeque.",
	" was outmatched by an unholy wrath.",
	" spilled a hot beverage.",
	" tried to perform a science experiment.",
	" morphed into a vampire and went out into the sun."
}

-- Other death messages
messages.other = {
	" died.",
	" did something fatal.",
	" gave up on life.",
	" is somewhat dead now.",
	" passed out -permanently.",
	" was slain.",
	" was killed.",
	" was sent to the void.",
	" finished their bucket list.",
	" was killed by an unknown force.",
	" took the easy way out.",
	" met with the Grim Reaper.",
	" tried to leave the game.",
	" finally understands karma.",
	" took things too seriously.",
	" bit the dust.",
	" was tonight's special entree.",
	" was in Thanatos' grasp.",
	" was on the dinner menu.",
	" had been served!",
	" tried to escape but failed.",
	" lost to gambling.",
	" died by something.",
	" did not want to be alive anymore.",
	" un-alive'd.",
	" did something bad.",
	" did not believe in God hard enough!",
	" had not prayed enough for their life!",
	" was not an immortal.",
	" tried putting their strength to the test.",
	" had a tantrum.",
	", you lose!",
	" don't live, the game does!",
	" wanted to see how dying felt.",
	" stubbed their toe.",
	" stood in awe of perfectionism.",
	" closed their eyes and went to sleep forever.",
	" lost their footing.",
	" collapsed.",
	"'s legs broke.",
	"'s legs fell off.",
	"'s legs had a mind of its own.",
	"'s legs fell asleep.",
	" froze in place and died.",
	" gave one final breath.",
	" met with a terrible fate.",
	" was no longer a part of this world.",
	" wants to be in a cemetery.",
	" ended up dead.",
	" perished.",
	" could not accept reality.",
	" turned into a pile of bones.",
	" went down.",
	" tried to find the meaning of life.",
	" stopped living.",
	" wanted to mock a blind person.",
	" wanted to live forever and failed.",
	" had an affair with death.",
	" is dead.",
	" thought they sneezed.",
	" tried to hold in a sneeze.",
	" became terminally ill.",
	" was no more."
}

function get_message(mtype)
	if RANDOM_MESSAGES then
		return messages[mtype][math.random(1, #messages[mtype])]
	else
		return messages[1] -- 1 is the index for the non-random message
	end
end

minetest.register_on_dieplayer(function(player)
	local player_name = player:get_player_name()
	local node = minetest.registered_nodes[minetest.get_node(player:getpos()).name]
	if minetest.is_singleplayer() then
		player_name = "You"
	end
	-- Death by lava
	if node.groups.lava ~= nil then
		minetest.chat_send_all(player_name .. get_message("lava"))
	-- Death by drowning
	elseif player:get_breath() == 0 then
		minetest.chat_send_all(player_name .. get_message("water"))
	-- Death by fire
	elseif node.name == "fire:basic_flame" then
		minetest.chat_send_all(player_name .. get_message("fire"))
	-- Death by something else
	else
		minetest.chat_send_all(player_name .. get_message("other"))
	end

end)

-----------------------------------------------------------------------------------------------
print("[Mod] "..title.." ["..version.."] ["..mname.."] Loaded...")
-----------------------------------------------------------------------------------------------
