-- provides a fix for the hive recipe to use group:wood
-- instead of default:wood

minetest.register_craft({
	output = "church_candles:hive_empty",
	recipe = {
		{"group:stick", "group:stick", "group:stick"},
		{"group:stick", "default:glass", "group:stick"},
		{"group:wood", "group:wood", "group:wood"}
	}
})

