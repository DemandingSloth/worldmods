minetest.register_tool("mystical_pickaxes:pick1",{
	description = "A weak, mystical pick",
	inventory_image = "mystical_pickaxes_Weak_rune_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times = {[3] = 5.0},uses = 0,maxlevel = 1}
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy = 5,cracky = 1}
	},
	groups = {pickaxe = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_pickaxes:pick2",{
	description = "A slightly weak, mystical pick",
	inventory_image = "mystical_pickaxes_MediumWeak_rune_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times = {[2] = 5.0,[3] = 4.0},uses = 0,maxlevel = 2}
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy = 6,cracky = 3}
	},
	groups = {pickaxe = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_pickaxes:pick3",{
	description = "A mediocore, mystical pick",
	inventory_image = "mystical_pickaxes_Medium_rune_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times = {[1] = 5.0,[2] = 4.0,[3] = 3.0},uses = 0,maxlevel = 3}
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy = 8, cracky = 6}
	},
	groups = {pickaxe = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_pickaxes:pick4",{
	description = "A slightly strong, mystical pick",
	inventory_image = "mystical_pickaxes_MediumStrong_rune_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times = {[1] = 4.0,[2] = 3.0,[3] = 2.0},uses = 0,maxlevel = 3}
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy = 11, cracky = 10}
	},
	groups = {pickaxe = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_pickaxes:pick5",{
	description = "A strong, mystical pick",
	inventory_image = "mystical_pickaxes_Strong_rune_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times = {[1] = 3.0,[2] = 2.0,[3] = 1.0},uses = 0,maxlevel = 3}
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy = 15, cracky = 15}
	},
	groups = {pickaxe = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_craft({
	output = "mystical_pickaxes:pick1",
	recipe = {{"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune"},
	{"","mystic_runes:rune_stick",""},
	{"","mystic_runes:rune_stick",""}}
})

minetest.register_craft({
	type = "shapeless",
	output = "mystical_pickaxes:pick2",
	recipe = {"mystical_pickaxes:pick1","mystic_runes:glassy_rune","mystic_runes:glassy_rune"}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_pickaxes:pick3",
	recipe = {"mystical_pickaxes:pick2","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune","mystic_runes:glassy_rune"}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_pickaxes:pick4",
	recipe = {"mystical_pickaxes:pick3","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune"}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_pickaxes:pick5",
	recipe = {"mystical_pickaxes:pick4","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune"}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_pickaxes:pick5",
	recipe = {"mystical_pickaxes:pick5","mystic_dust:normal"}
})