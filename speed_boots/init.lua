-- Speed Boots
	armor:register_armor("speed_boots:boots_speed", {
		description = "Boots of Swiftness",
		inventory_image = "speed_boots_inv.png",
		groups = {armor_feet=1, armor_heal=0, armor_use=1000, physics_speed=1.25, physics_jump=0.3},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	})
	
	minetest.register_craft({
		type = "shaped",
		output = "speed_boots:boots_speed",
		recipe = {
			{"", "", ""},
			{"speed_boots:silk", "", "speed_boots:silk"},
			{"default:gold_ingot", "", "default:gold_ingot"}
		}
	})
	
-- Silk
	minetest.register_craftitem("speed_boots:silk", {
		description = "Silk",
		inventory_image = "speed_boots_silk.png"
	})
	
	minetest.register_craft({
		output = "speed_boots:silk",
		recipe = {
			{"farming:string", "farming:string"},
			{"farming:string", "farming:string"}
		}
	})