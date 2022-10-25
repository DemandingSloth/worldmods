minetest.register_tool("mystical_swords:sword5",{
description = "A strong mystical sword",
inventory_image = "mystical_swords_strong_rune_sword.png",
tool_capabilities = {
	full_punch_interval = 0.7,
	max_drop_level = 0,
	groupcaps = {
		snappy = {times = {[1] = 0.2,[2] = 0.15, [3] = 0.1},maxlevel = 10,uses = 0}},
	punch_attack_uses = 0,
	damage_groups = {fleshy = 20,snappy = 15}},
groups = {sword = 1,rnd_disabled = 1,disable_repair = 1}
})
minetest.register_tool("mystical_swords:sword4",{
description = "A slightly strong mystical sword",
inventory_image = "mystical_swords_mediumStrong_rune_sword.png",
tool_capabilities = {
	full_punch_interval = 0.7,
	max_drop_level = 0,
	groupcaps = {
		snappy = {times = {[1] = 0.25,[2] = 0.2, [3] = 0.15},maxlevel = 10,uses = 0}
		},
	punch_attack_uses = 0,
	damage_groups = {fleshy = 16,snappy = 10}
	},
groups = {sword = 1,rnd_disabled = 1,disable_repair = 1}
})
minetest.register_tool("mystical_swords:sword3",{
description = "A mediocore mystical sword",
inventory_image = "mystical_swords_medium_rune_sword.png",
tool_capabilities = {
	full_punch_interval = 0.7,
	max_drop_level = 0,
	groupcaps = {
		snappy = {times = {[1] = 0.3,[2] = 0.25, [3] = 0.2},maxlevel = 10,uses = 0}
		},
	punch_attack_uses = 0,
	damage_groups = {fleshy = 13,snappy = 6}
	},
groups = {sword = 1,rnd_disabled = 1,disable_repair = 1}
})
minetest.register_tool("mystical_swords:sword2",{
description = "A slightly weak mystical sword",
inventory_image = "mystical_swords_mediumWeak_rune_sword.png",
tool_capabilities = {
	full_punch_interval = 0.7,
	max_drop_level = 0,
	groupcaps = {
		snappy = {times = {[2] = 0.3, [3] = 0.25},maxlevel = 10,uses = 0}
		},
	punch_attack_uses = 0,
	damage_groups = {fleshy = 11,snappy = 3}
	},
groups = {sword = 1,rnd_disabled = 1,disable_repair = 1}
})
minetest.register_tool("mystical_swords:sword1",{
description = "A weak mystical sword",
inventory_image = "mystical_swords_weak_rune_sword.png",
tool_capabilities = {
	full_punch_interval = 0.7,
	max_drop_level = 0,
	groupcaps = {
		snappy = {times = {[3] = 0.3},maxlevel = 10,uses = 0}
		},
	punch_attack_uses = 0,
	damage_groups = {fleshy = 10,snappy = 1}
	},
groups = {sword = 1,rnd_disabled = 1,disable_repair = 1}
})
minetest.register_craft({
recipe = {{"mystic_runes:glassy_rune"},
{"mystic_runes:glassy_rune"},
{"mystic_runes:rune_stick"}},
output = "mystical_swords:sword1"
})
minetest.register_craft({
recipe = {"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystical_swords:sword1"},
output = "mystical_swords:sword2",
type = "shapeless"
})
minetest.register_craft({
recipe = {"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystical_swords:sword2"},
output = "mystical_swords:sword3",
type = "shapeless"
})
minetest.register_craft({
recipe = {"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystical_swords:sword3"},
output = "mystical_swords:sword4",
type = "shapeless"
})
minetest.register_craft({
recipe = {"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystical_swords:sword4"},
output = "mystical_swords:sword5",
type = "shapeless"
})
minetest.register_craft({
recipe = {"mystic_dust:normal","mystical_swords:sword5"},
output = "mystical_swords:sword5",
type = "shapeless"
})