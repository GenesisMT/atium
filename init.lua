

minetest.register_craftitem("atium:atium_ingot", {
    description = minetest.colorize("#ea00ff", "Atium Ingot\n")..core.colorize("#ea00ff", "tier: 7 (legendary)"),
    inventory_image = "atium_atium_ingot.png",
    
})

minetest.register_craftitem("atium:atium_cluster", {
    description = minetest.colorize("#ea00ff", "Atium Cluster\n")..core.colorize("#ea00ff", "tier: 7 (legendary)"),
    inventory_image = "atium_atium_cluster.png",
    
})

minetest.register_craftitem("atium:atium_lump", {
    description = minetest.colorize("#ea00ff", "Atium Lump\n")..core.colorize("#ea00ff", "tier: 7 (legendary)"),
    inventory_image = "atium_atium_lump.png",
    max_stack = 99
})

minetest.register_craft({
    output = "atium:atium_ingot",
    recipe = {
        {"atium:atium_cluster", "default:diamondblock", ""},
        {"default:diamondblock", "atium:atium_cluster", "default:diamondblock"},
        {"", "default:diamondblock", "atium:atium_cluster"},
    }
})

minetest.register_craft({
    output = "atium:atium_cluster",
    recipe = {
        {"", "default:diamond", "atium:atium_lump"},
        {"default:diamond", "atium:atium_lump", "default:diamond"},
        {"atium:atium_lump", "default:diamond", ""},
    }
})

minetest.register_tool("atium:atium_sword", {
    description = minetest.colorize("#ea00ff", "Atium Sword\n")..core.colorize("#ea00ff", "tier: 7 (legendary)"),
    inventory_image = "atium_atium_sword.png",
    
    tool_capabilities = {
        full_punch_interval = 0.6,
        max_drop_level = 1,
        groupcaps = {
            snappy = {
                times = {0.01, 0.7, 0.6},
                uses = 150,
                maxlevel = 80
            },
        },
        damage_groups = {fleshy = 15, burns = 0},
    },
})




    minetest.register_tool("atium:atium_pickaxe", {
        description = minetest.colorize("#ea00ff", "Atium Pickaxe\n")..core.colorize("#ea00ff", "tier: 7 (legendary)"),
        inventory_image = "atium_atium_pickaxe.png",
       
        tool_capabilities = {

            full_punch_interval = 0.7,
            max_drop_level = 3,
            groupcaps={
                cracky = {
                    times = {[1] = 30, [2] = 30, [3] = 5},
                    uses = 150,
                    maxlevel = 80
                },
                 crumbly = {times={[1]=0.1, [2]=0.50, [3]=6}, uses=150, maxlevel=80},
                 snappy = {times={[1]=0.1, [2]=0.50, [3]=6}, uses=150, maxlevel=80},
             },
            damage_groups = {fleshy = 15, burns = 0},
        },
    })






minetest.register_tool("atium:atium_shovel", {
    description = minetest.colorize("#ea00ff", "Atium Shovel\n")..core.colorize("#ea00ff", "tier: 7 (legendary)"),
    inventory_image = "atium_atium_shovel.png",
    wield_image = "atium_atium_shovel.png",

    tool_capabilities = {
        full_punch_interval = 1.0,
        max_drop_level=1,
        groupcaps={
            crumbly = {times={[1]=0.01, [2]=0.50, [3]=6}, uses=150, maxlevel=80},
        },
        damage_groups = {fleshy=4},
    },
    sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("atium:atium_axe", {
    description = minetest.colorize("#ea00ff", "Atium Axe\n")..core.colorize("#ea00ff", "tier: 7 (legendary)"),
    inventory_image = "atium_atium_axe.png",

    tool_capabilities = {
        full_punch_interval = 11,
        max_drop_level = 10,
        groupcaps = {
            choppy = {
                times = {[1] = 0.1, [2] = 5, [3] = 5},
                uses = 150,
                maxlevel = 50
            },
        },
        damage_groups = {fleshy = 7, burns = 0},
    },

})


minetest.register_craft({
    output = "atium:atium_sword",
    recipe = {
        {"atium:atium_ingot"},
        {"atium:atium_ingot"},
        {"default:stick"},
    }
})

minetest.register_craft({
    output = "atium:atium_pickaxe",
    recipe = {
        {"atium:atium_ingot", "atium:atium_ingot", "atium:atium_ingot"},
        {"", "default:stick", ""},
        {"", "default:stick", ""},
    }
})

minetest.register_craft({
    output = "atium:atium_shovel",
    recipe = {
        {"atium:atium_ingot"},
        {"default:stick"},
        {"default:stick"},
    }
})

minetest.register_craft({
    output = "atium:atium_axe",
    recipe = {
        {"atium:atium_ingot", "atium:atium_ingot", ""},
        {"atium:atium_ingot", "default:stick", ""},
        {"", "default:stick", ""},
    }
})

minetest.register_node("atium:atium_block", {
    description = minetest.colorize("#ea00ff", "Atium Block\n")..core.colorize("#ea00ff", "tier: 7 (legendary)"),
    tiles = {"atium_atium_block.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 2},
    light_source = 2,
})

minetest.register_craft({
    type = "shapeless",
    output = "atium:atium_ingot 9",
    recipe = {"atium:atium_block"}
})

minetest.register_craft({
    output = "atium:atium_block",
    recipe = {
        {"atium:atium_ingot", "atium:atium_ingot", "atium:atium_ingot"},
        {"atium:atium_ingot", "atium:atium_ingot", "atium:atium_ingot"},
        {"atium:atium_ingot", "atium:atium_ingot", "atium:atium_ingot"},
    }
})

minetest.register_node("atium:atium_ore", {
    description = minetest.colorize("#ea00ff", "Atium Ore\n")..core.colorize("#ea00ff", "tier: 7 (legendary)"),
    tiles = {"default_stone.png^atium_atium_ore.png"},
    is_ground_content = false,
    drop = "atium:atium_lump",
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 2},
    light_source = 14,
})

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "atium:atium_ore",
    wherein        = "default:stone",
    clust_scarcity = 28*28*28,
    clust_num_ores = 1,
    clust_size     = 10,
    height_min     = -31000,
    height_max     = -20000,
})

