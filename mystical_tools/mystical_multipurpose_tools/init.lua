minetest.register_tool("mystical_multipurpose_tools:tool1",{
	description = "A mystical multi-purpose tool",
	inventory_image = "mystical_multipurpose_tools_Weak_tool.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level = 10,
		groupcaps = {
			cracky = {times = {[1] = 3.0,[2] = 2.0,[3] = 1.0},uses = 0,maxlevel = 10},
			crumbly = {times = {[1]= 2.0,[2] = 1.5, [3] = 1.0},maxlevel = 10,uses = 0},
			choppy = {times = {[1] = 3.0,[2] = 2.0,[3] = 1.0},maxlevel = 10, uses = 0},
			snappy = {times = {[1] = 0.2,[2] = 0.15, [3] = 0.1},maxlevel = 10,uses = 0}
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy = 66,choppy = 21,crumbly = 21,cracky = 21,snappy = 21},
		groups = {pickaxe = 1,axe = 1,shovel = 1,sword = 1,disable_repair = 1,rnd_disabled=1}
	}
})
minetest.register_tool("mystical_multipurpose_tools:tool2",{
	description = "A stronger, mystical multi-purpose tool",
	inventory_image = "mystical_multipurpose_tools_Medium_tool.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level = 3,
		groupcaps = {
			cracky = {times = {[1] = 2.0,[2] = 1.0,[3] = 0.05},uses = 0,maxlevel = 3},
			crumbly = {times = {[1]= 1.5,[2] = 1.0, [3] = 0.5},maxlevel = 3,uses = 0},
			choppy = {times = {[1] = 2.0,[2] = 1.0,[3] = 0.1},maxlevel = 3, uses = 0},
			snappy = {times = {[1] = 0.15,[2] = 0.1, [3] = 0.05},maxlevel = 3,uses = 0}
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy = 132,choppy = 78,crumbly = 78,cracky = 78,snappy = 78},
		groups = {pickaxe = 1,axe = 1,shovel = 1,sword = 1,disable_repair = 1,rnd_disabled=1}
	}
})
minetest.register_tool("mystical_multipurpose_tools:tool3",{
	description = "An even stronger mystical multi-purpose tool",
	inventory_image = "mystical_multipurpose_tools_Strong_tool.png",
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level = 3,
		groupcaps = {
			cracky = {times = {[1] = 1.0,[2] = 0.1,[3] = 0.05},uses = 0,maxlevel = 3}, --pickaxe
			crumbly = {times = {[1]= 1.0,[2] = 0.5, [3] = 0.05},maxlevel = 3,uses = 0}, --shovel
			choppy = {times = {[1] = 1.0,[2] = 0.1,[3] = 0.05},maxlevel = 3, uses = 0}, --axe
			snappy = {times = {[1] = 0.15,[2] = 0.1, [3] = 0.05},maxlevel = 3,uses = 0} --sword
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy = 264,choppy = 300,crumbly = 300,cracky = 300,snappy = 300},
		groups = {pickaxe = 1,axe = 1,shovel = 1,sword = 1,disable_repair = 1,rnd_disabled=1}
	}
})
minetest.register_craft({
	type = "shapeless",
	recipe = {"mystic_runes:glassy_rune","mystic_runes:glassy_rune","mystic_runes:glassy_rune",
			  "mystic_runes:glassy_rune","mystical_swords:sword5","mystical_axes:ax5",
			  "mystical_pickaxes:pick5","mystical_shovels:shovel5","mystic_runes:charged_rune"},
	output = "mystical_multipurpose_tools:tool1",
	replacements = {{"mystic_runes:charged_rune","mystic_runes:chargable_rune"}}
})
minetest.register_craft({
	type = "shapeless",
	recipe = {"mystic_dust:normal","mystical_multipurpose_tools:tool1"},
	output = "mystical_multipurpose_tools:tool1"
})
minetest.register_craft({
	type = "shapeless",
	recipe = {"mystic_dust:normal","mystical_multipurpose_tools:tool2"},
	output = "mystical_multipurpose_tools:tool2"
})
minetest.register_craft({
	type = "shapeless",
	recipe = {"mystic_dust:normal","mystical_multipurpose_tools:tool3"},
	output = "mystical_multipurpose_tools:tool3"
})
minetest.register_node("mystical_multipurpose_tools:node",{
description = "A random node",
tiles = {"mystical_multipurpose_tools_node.png"},
groups = {wood = 1,tree = 1,stick = 1, stone = 1,oddly_breakable_by_hand = 1,snappy = 2,choppy = 3,cracky = 2,crumbly = 1,runic = 3,rnd_disabled = 1},
drawtype = "glasslike",
sunlight_propagates = true,
stack_max = 8192,
on_blast = function(pos,intensity)return end
})
minetest.register_craft({
recipe = {{"mystic_dust:normal","mystic_dust:normal","mystic_dust:normal"},
{"mystic_dust:normal","mystic_dust:normal","mystic_dust:normal"},
{"mystic_dust:normal","mystic_dust:normal","mystic_dust:normal"}},
output = "mystical_multipurpose_tools:node"
})
minetest.register_craft({
recipe = {{"mystical_multipurpose_tools:node"}},
output = "mystic_dust:normal 9"
})