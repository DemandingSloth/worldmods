minetest.register_tool("mystical_shovels:shovel1",{
	description = "A weak, mystical shovel",
	inventory_image = "mystical_shovels_weak_rune_shovel.png^[transformR90",
	tool_capabilities = {
	full_punch_interval = 1.0,
	max_drop_level = 0,
		groupcaps = {crumbly = {times = {[3]=3.0},maxlevel = 1,uses = 0}}
	},
	damage_groups = {fleshy = 4, crumbly = 1},
	groups = {shovel = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_shovels:shovel2",{
	description = "A slightly weak, mystical shovel",
	inventory_image = "mystical_shovels_mediumWeak_rune_shovel.png^[transformR90",
	tool_capabilities = {
	full_punch_interval = 1.0,
	max_drop_level = 0,
		groupcaps = {crumbly = {times = {[2]=3.0,[3] = 2.5},maxlevel = 2,uses = 0}},
		punch_attack_uses = 0
	},
	damage_groups = {fleshy = 5, crumbly = 3},
	groups = {shovel = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_shovels:shovel3",{
	description = "A medicore, mystical shovel",
	inventory_image = "mystical_shovels_medium_rune_shovel.png^[transformR90",
	tool_capabilities = {
	full_punch_interval = 1.0,
	max_drop_level = 0,
		groupcaps = {crumbly = {times = {[1]=3.0,[2] = 2.5,[3] = 2.0},maxlevel = 3,uses = 0}},
		punch_attack_uses = 0
	},
	damage_groups = {fleshy = 7, crumbly = 6},
	groups = {shovel = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_shovels:shovel4",{
	description = "A slightly strong, mystical shovel",
	inventory_image = "mystical_shovels_mediumStrong_rune_shovel.png^[transformR90",
	tool_capabilities = {
	full_punch_interval = 1.0,
	max_drop_level = 0,
		groupcaps = {crumbly = {times = {[1]=2.5,[2] = 2.0,[3] = 1.5},maxlevel = 3,uses = 0}},
		punch_attack_uses = 0
	},
	damage_groups = {fleshy = 10, crumbly = 10},
	groups = {shovel = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_shovels:shovel5",{
	description = "A strong, mystical shovel",
	inventory_image = "mystical_shovels_strong_rune_shovel.png^[transformR90",
	tool_capabilities = {
	full_punch_interval = 1.0,
	max_drop_level = 0,
		groupcaps = {crumbly = {times = {[1]=2.0,[2] = 1.5,[3] = 1.0},maxlevel = 3,uses = 0}},
		punch_attack_uses = 0
	},
	damage_groups = {fleshy = 14, crumbly = 15},
	groups = {shovel = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_craft({
	output = "mystical_shovels:shovel1",
	recipe = {{"mystic_runes:glassy_rune"},{"mystic_runes:rune_stick"},{"mystic_runes:rune_stick"}}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_shovels:shovel2",
	recipe = {"mystical_shovels:shovel1","mystic_runes:glassy_rune","mystic_runes:glassy_rune"}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_shovels:shovel3",
	recipe = {"mystical_shovels:shovel2","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune","mystic_runes:glassy_rune"}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_shovels:shovel4",
	recipe = {"mystical_shovels:shovel3","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune"}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_shovels:shovel5",
	recipe = {"mystical_shovels:shovel4","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune"}
})
minetest.register_craft({
type = "shapeless",
recipe = {"mystic_dust:normal","mystical_shovels:shovel5"},
output = "mystical_shovels:shovel5"
})