farming.register_hoe("mystical_hoe:hoe",{
	description = "An unbreakable hoe",
	inventory_image = "mystical_hoe_rune_hoe.png",
	max_uses = 0,
	groups = {hoe = 1,disable_repair = 1,rnd_disabled = 1}
})
minetest.register_craft({
	output = "mystical_hoe:hoe",
	recipe = {{"mystic_runes:glassy_rune","mystic_runes:glassy_rune"},
	{"","mystic_runes:rune_stick"},
	{"","mystic_runes:rune_stick"}}
})
minetest.register_craft({
	output = "mystical_hoe:hoe",
	recipe = {"mystic_dust:normal","mystical_hoe:hoe"},
	type = "shapeless"
})