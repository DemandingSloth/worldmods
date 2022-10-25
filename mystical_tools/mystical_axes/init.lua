minetest.register_tool("mystical_axes:ax1",{
	description = "A weak, mystical ax",
	inventory_image = "mystical_axes_weak_rune_ax.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {choppy = {times = {[3] = 5.0},maxlevel = 1, uses = 0}},
		punch_attack_uses = 0
	},
	damage_groups = {fleshy = 7, choppy = 1},
	groups = {axe = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_axes:ax2",{
	description = "A slightly weak, mystical ax",
	inventory_image = "mystical_axes_mediumWeak_rune_ax.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {choppy = {times = {[2] = 5.0,[3] = 4.0},maxlevel = 2, uses = 0}},
		punch_attack_uses = 0
	},
	damage_groups = {fleshy = 8, choppy = 3},
	groups = {axe = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_axes:ax3",{
	description = "A mediocore, mystical ax",
	inventory_image = "mystical_axes_medium_rune_ax.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {choppy = {times = {[1] = 5.0,[2] = 4.0,[3] = 3.0},maxlevel = 3, uses = 0}},
		punch_attack_uses = 0
	},
	damage_groups = {fleshy = 10, choppy = 6},
	groups = {axe = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_axes:ax4",{
	description = "A slightly strong, mystical ax",
	inventory_image = "mystical_axes_mediumStrong_rune_ax.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {choppy = {times = {[1] = 4.0,[2] = 3.0,[3] = 2.0,},maxlevel = 3, uses = 0}},
		punch_attack_uses = 0
	},
	damage_groups = {fleshy = 13, choppy = 10},
	groups = {axe = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_axes:ax5",{
	description = "A strong, mystical ax",
	inventory_image = "mystical_axes_strong_rune_ax.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {choppy = {times = {[1] = 3.0, [2] = 2.0, [3] = 1.0},maxlevel = 3, uses = 0}},
		punch_attack_uses = 0
	},
	damage_groups = {fleshy = 17, choppy = 15},
	groups = {axe = 1,disable_repair = 1,rnd_disabled=1}
})

minetest.register_craft({
	output = "mystical_axes:ax1",
	recipe = {{"mystic_runes:glassy_rune","mystic_runes:glassy_rune"},
	{"mystic_runes:glassy_rune","mystic_runes:rune_stick"},
	{"","mystic_runes:rune_stick"}}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_axes:ax2",
	recipe = {"mystical_axes:ax1","mystic_runes:glassy_rune","mystic_runes:glassy_rune"}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_axes:ax3",
	recipe = {"mystical_axes:ax2","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune","mystic_runes:glassy_rune"}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_axes:ax4",
	recipe = {"mystical_axes:ax3","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune"}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_axes:ax5",
	recipe = {"mystical_axes:ax4","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
	"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune"}
})
minetest.register_craft({
	type = "shapeless",
	output = "mystical_axes:ax5",
	recipe = {"mystical_axes:ax5","mystic_dust:normal"}
})