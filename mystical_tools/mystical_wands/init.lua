minetest.register_tool("mystical_wands:wand1",{
	description = "A weak wand",
	inventory_image = "mystical_wands_wand1.png",
	tool_capabilities = {
		full_punch_interval = 5,
		max_drop_level=0,
		groupcaps={
			runic = {times={[5]=10}, uses=0, maxlevel=1},
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy=3,runic=3},
	},
	groups = {wand = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_wands:wand2",{
	description = "A slightly weak wand",
	inventory_image = "mystical_wands_wand2.png",
	tool_capabilities = {
		full_punch_interval = 4,
		max_drop_level=0,
		groupcaps={
			runic = {times={[4] = 10,[5]=8}, uses=0, maxlevel=2},
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy=6,runic=6},
	},
	groups = {wand = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_wands:wand3",{
	description = "A medicore wand",
	inventory_image = "mystical_wands_wand3.png",
	tool_capabilities = {
		full_punch_interval = 3,
		max_drop_level=0,
		groupcaps={
			runic = {times={[3] = 10,[4]=8,[5]=6}, uses=0, maxlevel=3},
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy=9,runic=9},
	},
	groups = {wand = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_wands:wand4",{
	description = "A slightly strong wand",
	inventory_image = "mystical_wands_wand4.png",
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=0,
		groupcaps={
			runic = {times={[2] = 10,[3]=8,[4]=6,[5] = 4}, uses=0, maxlevel=4},
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy=12,runic=12},
	},
	groups = {wand = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_tool("mystical_wands:wand5",{
	description = "A strong wand",
	inventory_image = "mystical_wands_wand5.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			runic = {times={[1] = 10,[2]=8,[3]=6,[4] = 4,[5] = 2}, uses=0, maxlevel=5},
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy=15,runic=15},
	},
	groups = {wand = 1,disable_repair = 1,rnd_disabled=1}
})
minetest.register_craft({
	output = "mystical_wands:wand1",
	recipe = {{"mystic_runes:rune_stick"},{"mystic_runes:rune_stick"},{"mystic_runes:rune_stick"}}
})
minetest.register_craft({
	output = "mystical_wands:wand2",
	recipe = {"mystic_runes:rune_stick","mystic_runes:rune_stick","mystical_wands:wand1"},
	type = "shapeless"
})
minetest.register_craft({
	output = "mystical_wands:wand3",
	recipe = {"mystic_runes:rune_stick","mystic_runes:rune_stick","mystic_runes:rune_stick",
			  "mystic_runes:rune_stick","mystical_wands:wand2"},
	type = "shapeless"
})
minetest.register_craft({
	output = "mystical_wands:wand4",
	recipe = {"mystic_runes:rune_stick","mystic_runes:rune_stick","mystic_runes:rune_stick",
			  "mystic_runes:rune_stick","mystic_runes:rune_stick","mystic_runes:rune_stick",
			  "mystical_wands:wand3"},
	type = "shapeless"
})
minetest.register_craft({
	output = "mystical_wands:wand5",
	recipe = {"mystic_runes:rune_stick","mystic_runes:rune_stick","mystic_runes:rune_stick",
			  "mystic_runes:rune_stick","mystic_runes:rune_stick","mystic_runes:rune_stick",
			  "mystic_runes:rune_stick","mystic_runes:rune_stick","mystical_wands:wand4"},
	type = "shapeless"
})
