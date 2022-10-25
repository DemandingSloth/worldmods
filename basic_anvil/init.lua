
minetest.register_craftitem("basic_anvil:anvil", {
  description = "Tool Repair Anvil",
  inventory_image = "basic_anvil_image.png",
})

--Anvil

minetest.register_craft({
    output = "basic_anvil:anvil",
    recipe = {{"default:steel_ingot", "default:steelblock", "default:steel_ingot"}},
})

--Steel

minetest.register_craft({
    type = "shapeless",
    output = "default:pick_steel",
    recipe = {"default:steel_ingot", "default:pick_steel", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})
minetest.register_craft({
    type = "shapeless",
    output = "default:axe_steel",
    recipe = {"default:steel_ingot", "default:axe_steel", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})
minetest.register_craft({
    type = "shapeless",
    output = "default:shovel_steel",
    recipe = {"default:steel_ingot", "default:shovel_steel", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})
minetest.register_craft({
    type = "shapeless",
    output = "default:sword_steel",
    recipe = {"default:steel_ingot", "default:sword_steel", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})

--Diamond

minetest.register_craft({
    type = "shapeless",
    output = "default:pick_diamond",
    recipe = {"default:diamond", "default:pick_diamond", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})
minetest.register_craft({
    type = "shapeless",
    output = "default:axe_diamond",
    recipe = {"default:diamond", "default:axe_diamond", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})
minetest.register_craft({
    type = "shapeless",
    output = "default:shovel_diamond",
    recipe = {"default:diamond", "default:shovel_diamond", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})
minetest.register_craft({
    type = "shapeless",
    output = "default:sword_diamond",
    recipe = {"default:diamond", "default:sword_diamond", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})

--Mese

minetest.register_craft({
    type = "shapeless",
    output = "default:pick_mese",
    recipe = {"default:mese_crystal", "default:pick_mese", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})
minetest.register_craft({
    type = "shapeless",
    output = "default:axe_mese",
    recipe = {"default:mese_crystal", "default:axe_mese", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})
minetest.register_craft({
    type = "shapeless",
    output = "default:shovel_mese",
    recipe = {"default:mese_crystal", "default:shovel_mese", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})
minetest.register_craft({
    type = "shapeless",
    output = "default:sword_mese",
    recipe = {"default:mese_crystal", "default:sword_mese", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})

--Bronze

minetest.register_craft({
    type = "shapeless",
    output = "default:pick_bronze",
    recipe = {"default:bronze_ingot", "default:pick_bronze", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})
minetest.register_craft({
    type = "shapeless",
    output = "default:axe_bronze",
    recipe = {"default:bronze_ingot", "default:axe_bronze", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})
minetest.register_craft({
    type = "shapeless",
    output = "default:shovel_bronze",
    recipe = {"default:bronze_ingot", "default:shovel_bronze", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})
minetest.register_craft({
    type = "shapeless",
    output = "default:sword_bronze",
    recipe = {"default:bronze_ingot", "default:sword_bronze", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})



if(minetest.get_modpath("farming")) ~= nil then
  minetest.register_craft({
      type = "shapeless",
      output = "farming:hoe_steel",
      recipe = {"default:steel_ingot", "farming:hoe_steel", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  if(minetest.get_modpath("moreores")) ~= nil then
    minetest.register_craft({
		type = "shapeless",
		output = "moreores:hoe_mithril",
		recipe = {"moreores:mithril_ingot", "moreores:hoe_mithril", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:hoe_silver",
		recipe = {"moreores:silver_ingot", "moreores:silver_mithril", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
  end
end

if(minetest.get_modpath("3d_armor")) ~= nil then
  if(minetest.get_modpath("moreores")) ~= nil then
    minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:helmet_mithril",
      recipe = {"moreores:mithril_ingot", "3d_armor:helmet_mithril", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
    })
    minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:chestplate_mithril",
      recipe = {"moreores:mithril_ingot", "3d_armor:chestplate_mithril", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
    })
    minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:leggings_mithril",
      recipe = {"moreores:mithril_ingot", "3d_armor:leggings_mithril", "basic_anvil:anvil"},
    replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
    })
    minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:boots_mithril",
      recipe = {"moreores:mithril_ingot", "3d_armor:boots_mithril", "basic_anvil:anvil"},
    replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
    })
     
    
  end
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:helmet_steel",
      recipe = {"default:steel_ingot", "3d_armor:helmet_steel", "basic_anvil:anvil"},
    replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
    })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:chestplate_steel",
      recipe = {"default:steel_ingot", "3d_armor:chestplate_steel", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:leggings_steel",
      recipe = {"default:steel_ingot", "3d_armor:leggings_steel", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:boots_steel",
      recipe = {"default:steel_ingot", "3d_armor:boots_steel", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })

  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:helmet_bronze",
      recipe = {"default:bronze_ingot", "3d_armor:helmet_bronze", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:chestplate_bronze",
      recipe = {"default:bronze_ingot", "3d_armor:chestplate_bronze", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:leggings_bronze",
      recipe = {"default:bronze_ingot", "3d_armor:leggings_bronze", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:boots_bronze",
      recipe = {"default:bronze_ingot", "3d_armor:boots_bronze", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })

  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:helmet_gold",
      recipe = {"default:gold_ingot", "3d_armor:helmet_gold", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:chestplate_gold",
      recipe = {"default:gold_ingot", "3d_armor:chestplate_gold", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:leggings_gold",
      recipe = {"default:gold_ingot", "3d_armor:leggings_gold", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:boots_gold",
      recipe = {"default:gold_ingot", "3d_armor:boots_gold", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })

  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:helmet_diamond",
      recipe = {"default:diamond", "3d_armor:helmet_diamond", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:chestplate_diamond",
      recipe = {"default:diamond", "3d_armor:chestplate_diamond", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:leggings_diamond",
      recipe = {"default:diamond", "3d_armor:leggings_diamond", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:boots_diamond",
      recipe = {"default:diamond", "3d_armor:boots_diamond", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
    minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:helmet_nether",
      recipe = {"nether:nether_ingot", "3d_armor:helmet_nether", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:chestplate_nether",
      recipe = {"nether:nether_ingot", "3d_armor:chestplate_nether", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:leggings_nether",
      recipe = {"nether:nether_ingot", "3d_armor:leggings_nether", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  minetest.register_craft({
      type = "shapeless",
      output = "3d_armor:boots_nether",
      recipe = {"nether:nether_ingot", "3d_armor:boots_nether", "basic_anvil:anvil"},
  	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
  })
  
  end 
  if(minetest.get_modpath("moreores")) ~= nil then
    minetest.register_craft({
		type = "shapeless",
		output = "moreores:hoe_mithril",
		recipe = {"moreores:mithril_ingot", "moreores:hoe_mithril", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:hoe_silver",
		recipe = {"moreores:silver_ingot", "moreores:hoe_silver", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
end
if(minetest.get_modpath("moreores")) ~= nil then
    minetest.register_craft({
		type = "shapeless",
		output = "moreores:sword_mithril",
		recipe = {"moreores:mithril_ingot", "moreores:sword_mithril", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:sword_silver",
		recipe = {"moreores:silver_ingot", "moreores:sword_silver", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:sword_mithril",
		recipe = {"moreores:mithril_ingot", "moreores:sword_mithril", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:sword_silver",
		recipe = {"moreores:silver_ingot", "moreores:sword_silver", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:sword_mithril",
		recipe = {"moreores:mithril_ingot", "moreores:sword_mithril", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:sword_silver",
		recipe = {"moreores:silver_ingot", "moreores:sword_silver", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:axe_mithril",
		recipe = {"moreores:mithril_ingot", "moreores:axe_mithril", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:axe_silver",
		recipe = {"moreores:silver_ingot", "moreores:axe_silver", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:pick_mithril",
		recipe = {"moreores:mithril_ingot", "moreores:pick_mithril", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:pick_silver",
		recipe = {"moreores:silver_ingot", "moreores:pick_silver", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:shovel_mithril",
		recipe = {"moreores:mithril_ingot", "moreores:shovel_mithril", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	
	minetest.register_craft({
		type = "shapeless",
		output = "moreores:shovel_silver",
		recipe = {"moreores:silver_ingot", "moreores:shovel_silver", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
end
-- add support for sheilds

if(minetest.get_modpath("shields")) ~= nil then
    minetest.register_craft({
        type = "shapeless",
	    output = "shields:shield_steel",
	    recipe = {"default:steel_ingot", "shields:shield_steel", "basic_anvil:anvil"},
        replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	minetest.register_craft({
        type = "shapeless",
	    output = "shields:shield_bronze",
	    recipe = {"default:bronze_ingot", "shields:shield_bronze", "basic_anvil:anvil"},
        replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	minetest.register_craft({
        type = "shapeless",
	    output = "shields:shield_gold",
	    recipe = {"default:gold_ingot", "shields:shield_gold", "basic_anvil:anvil"},
        replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	minetest.register_craft({
        type = "shapeless",
	    output = "shields:shield_diamond",
	    recipe = {"default:diamond", "shields:shield_diamond", "basic_anvil:anvil"},
        replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	minetest.register_craft({
        type = "shapeless",
	    output = "shields:shield_steel",
	    recipe = {"default:steel_ingot", "shields:shield_steel", "basic_anvil:anvil"},
        replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	minetest.register_craft({
        type = "shapeless",
	    output = "shields:shield_mithril",
	    recipe = {"default:mithril_ingot", "shields:shield_mithril", "basic_anvil:anvil"},
        replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	minetest.register_craft({
        type = "shapeless",
	    output = "shields:shield_nether",
	    recipe = {"nether:nether_ingot", "shields:shield_nether", "basic_anvil:anvil"},
        replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})


minetest.register_craft({
	type = "shapeless",
	output = "shields:shield_crystal",
	recipe = {"default:mese_crystal", "shields:shield_crystal", "basic_anvil:anvil"},
	replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
})



end
-- Add support for castles modpack
if(minetest.get_modpath("castle_weapons")) ~= nil then
    minetest.register_craft({
		type = "shapeless",
		output = "castle_weapons:battleaxe",
		recipe = {"default:steel_ingot", "castle_weapons:battleaxe", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
end	
	--add other nether tools
if(minetest.get_modpath("nether")) ~= nil then
    minetest.register_craft({
		type = "shapeless",
		output = "nether:pick_nether",
		recipe = {"nether:nether_ingot", "nether:pick_nether", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})	
	minetest.register_craft({
		type = "shapeless",
		output = "nether:hoe_nether",
		recipe = {"nether:nether_ingot", "nether:hoe_nether", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	minetest.register_craft({
		type = "shapeless",
		output = "nether:shovel_nether",
		recipe = {"nether:nether_ingot", "nether:shovel_nether", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
    minetest.register_craft({
		type = "shapeless",
		output = "nether:sword_nether",
		recipe = {"nether:nether_ingot", "nether:sword_nether", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
	minetest.register_craft({
		type = "shapeless",
		output = "nether:axe_nether",
		recipe = {"nether:nether_ingot", "nether:axe_nether", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
end

-- speed boots
if minetest.get_modpath("speed_boots") then
	minetest.register_craft({
		type = "shapeless",
		output = "speed_boots:boots_speed",
		recipe = {"speed_boots:silk", "speed_boots:boots_speed", "basic_anvil:anvil"},
		replacements = {{"basic_anvil:anvil", "basic_anvil:anvil"}},
	})
end

