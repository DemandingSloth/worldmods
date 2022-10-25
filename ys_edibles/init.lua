--[[
        ys_edibles
        YshinKharu - 10-11-2022

        Provides more safe-to-eat food items.
        Additionally adds more info for reference.

        GitLab: https://gitlab.com/YshinKharu/ys_voxel

        Code is not final; expect unprofessionalism & bugs.
        Licensed under ICCLEIYSIUYA.
        http://www.evvk.com/evvktvh.html
--]]


d_b = "default:blueberries"
d_a = "default:apple"

--
-- crafts
-- 
minetest.register_craft({
        type = "shapeless",
        output = "ys_edibles:bread_blueberries",
        recipe = {
                "default:blueberries",
                "farming:bread"
        }
})

minetest.register_craftitem("ys_edibles:bread_blueberries", {
        description = "Bread with Blueberries" .. "\n" .. "+7 HP",
        inventory_image = "bread_blueberries.png",
        groups = {food_bread = 1},
        on_use = minetest.item_eat(7),
})


minetest.register_craft({
        type = "shapeless",
        output = "ys_edibles:bread_apple",
        recipe = {
                "default:apple",
                "farming:bread"
        },
        replacements = {
                {"default:apple", "ys_edibles:apple_core"}
        }
})

minetest.register_craftitem("ys_edibles:bread_apple", {
        description = "Apple Bread" .. "\n" .. "+7 HP",
        inventory_image = "bread_apple.png",
        groups = {food_bread = 1},
        on_use = minetest.item_eat(7),
})


minetest.register_craftitem("ys_edibles:blueberries", {
        description = "Bunch of Blueberries" .. "\n" .. "+10 HP",
        inventory_image = "blueberries.png",
        groups = {food_blueberries = 1, food_berry = 1},
        on_use = minetest.item_eat(10),
})

minetest.register_craftitem("ys_edibles:apples", {
        description = "Bunch of Apples" .. "\n" .. "+10 HP",
        inventory_image = "apples.png",
        groups = {fleshy = 3, food_apple = 1},
        on_use = minetest.item_eat(10, "ys_edibles:apple_core 5"),
})

minetest.register_craftitem("ys_edibles:apple_core", {
        description = "Apple Core" .. "\n" .. "Turns into seeds",
        inventory_image = "apple_core.png",
        groups = {fleshy = 3},
})

minetest.register_craftitem("ys_edibles:apple_seeds", {
        description = "Apple Seeds",
        inventory_image = "apple_seeds.png",
})

minetest.register_craft({
        type = "shapeless",
        output = "ys_edibles:apple_seeds 4",
        recipe = {"ys_edibles:apple_core"}
})

--
-- end of crafts
--


--
-- bundles
--
minetest.register_craft({
        output = "ys_edibles:blueberries", -- a way to combine multiple foods into one for compactness
        recipe = {
                {"", d_b, ""},
                {d_b, d_b, d_b},
                {"", d_b, ""}
        }
})

minetest.register_craft({
        type = "shapeless",
        output = "default:blueberries 5", -- take it apart & can be remade again
        recipe = {
                "ys_edibles:blueberries"
        }
})

minetest.register_craft({
        output = "ys_edibles:apples",
        recipe = {
                {"", d_a, ""},
                {d_a, d_a, d_a},
                {"", d_a, ""}
        }
})

minetest.register_craft({
        type = "shapeless",
        output = "default:apple 5",
        recipe = {
                "ys_edibles:apples"
        }
})

--
-- end of bundles
--


--
-- override_item
--
minetest.override_item("default:blueberries", {
	description = "Blueberries" .. "\n" .. "+2 HP"
})


minetest.override_item("default:apple", {
        description = "Apple" .. "\n" .. "+2 HP",
        on_use = minetest.item_eat(2, "ys_edibles:apple_core")
})

minetest.override_item("farming:bread", {
        description = "Bread" .. "\n" .. "+5 HP"
})

--
-- end of override_item
--


--
-- fuel
--
minetest.register_craft({
        type = "fuel",
        recipe = "ys_edibles:apple_seeds",
        burntime = 1
})
--
-- end of fuel
--
