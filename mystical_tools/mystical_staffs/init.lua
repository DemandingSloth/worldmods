minetest.register_tool("mystical_staffs:staff1",{
	description = "A weak staff",
	inventory_image = "mystical_staffs_staff1.png",
	tool_capabilities = {
		full_punch_interval = 2.5,
		max_drop_level=0,
		groupcaps={
			runic = {times={[5] = 5}, uses=0, maxlevel=1},
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy=6,runic=6},
	},
	groups = {staff = 1,disable_repair = 1,rnd_disabled = 1}
})
minetest.register_tool("mystical_staffs:staff2",{
	description = "A slightly weak staff",
	inventory_image = "mystical_staffs_staff2.png",
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=0,
		groupcaps={
			runic = {times={[4] = 5,[5] = 4}, uses=0, maxlevel=2},
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy=12,runic=12},
	},
	groups = {staff = 1,disable_repair = 1,rnd_disabled = 1}
})
minetest.register_tool("mystical_staffs:staff3",{
	description = "A mediocore staff",
	inventory_image = "mystical_staffs_staff3.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=0,
		groupcaps={
			runic = {times={[3] = 5,[4] = 4,[5] = 3}, uses=0, maxlevel=3},
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy=18,runic=18},
	},
	groups = {staff = 1,disable_repair = 1,rnd_disabled = 1}
})
minetest.register_tool("mystical_staffs:staff4",{
	description = "A slightly strong staff",
	inventory_image = "mystical_staffs_staff4.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			runic = {times={[2] = 5,[3] = 4,[4] = 3,[5] = 2}, uses=0, maxlevel=4},
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy=24,runic=24},
	},
	groups = {staff = 1,disable_repair = 1,rnd_disabled = 1}
})
minetest.register_tool("mystical_staffs:staff5",{
	description = "A strong staff",
	inventory_image = "mystical_staffs_staff5.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=0,
		groupcaps={
			runic = {times={[1] = 5,[2] = 4,[3] = 3,[4] = 2,[5] = 1}, uses=0, maxlevel=5},
		},
		punch_attack_uses = 0,
		damage_groups = {fleshy=30,runic=30},
	},
	groups = {staff = 1,disable_repair = 1,rnd_disabled = 1}
})
minetest.register_craftitem("mystical_staffs:staff_fragment",{
inventory_image = "mystical_staffs0.png",
groups = {wand = 1,rnd_disabled = 1}
})
if not minetest.get_modpath("mystical_wands") then
minetest.register_craft({
recipe = {"mystic_dust:normal","mystic_dust:normal","mystic_dust:normal",
"mystic_dust:normal","group:tree","group:tree",
"group:tree","group:tree","group:stone"},
type = "shapeless"
})
end
minetest.register_craft({
	output = "mystical_staffs:staff1",
	recipe = {{"group:wand"},{"group:wand"},{"group:wand"}}
})
minetest.register_craft({
	output = "mystical_staffs:staff2",
	recipe = {"mystical_staffs:staff1","group:wand","group:wand"},
	type = "shapeless"
})
minetest.register_craft({
	output = "mystical_staffs:staff3",
	recipe = {"mystical_staffs:staff2","group:wand","group:wand",
			  "group:wand","group:wand"},
	type = "shapeless"
})
minetest.register_craft({
	output = "mystical_staffs:staff4",
	recipe = {"mystical_staffs:staff3","group:wand","group:wand",
			  "group:wand","group:wand","group:wand",
			  "group:wand"},
	type = "shapeless"
})
minetest.register_craft({
	output = "mystical_staffs:staff5",
	recipe = {"mystical_staffs:staff4","group:wand","group:wand",
			  "group:wand","group:wand","group:wand",
			  "group:wand","group:wand","group:wand"},
	type = "shapeless"
})
