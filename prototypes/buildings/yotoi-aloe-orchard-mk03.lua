local MODULE_SLOTS = 99

RECIPE {
    type = "recipe",
    name = "yotoi-aloe-orchard-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "yotoi-aloe-orchard-mk02", amount = 1},
        {type = "item", name = "sc-unit",                 amount = 10},
        {type = "item", name = "neuromorphic-chip",       amount = 15},
        {type = "item", name = "processing-unit",         amount = 30},
        {type = "item", name = "electric-engine-unit",    amount = 2},
        {type = "item", name = "latex",                   amount = 100},
    },
    results = {
        {type = "item", name = "yotoi-aloe-orchard-mk03", amount = 1}
    }
}:add_unlock("botany-mk03")

ITEM {
    type = "item",
    name = "yotoi-aloe-orchard-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/yotoi-aloe-orchard-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk03",
    order = "e",
    place_result = "yotoi-aloe-orchard-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "yotoi-aloe-orchard-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/yotoi-aloe-orchard-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "yotoi-aloe-orchard-mk03"},
    fast_replaceable_group = "yotoi-aloe-orchard",
    max_health = 50,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"yotoi"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "yotoi-aloe-orchard-mk01", .3),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -3
        },
    },
    energy_usage = "1300kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a1.png",
                    width = 384,
                    height = 96,
                    line_length = 5,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 128)
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a1-mask.png",
                    width = 384,
                    height = 96,
                    line_length = 5,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 128),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a2.png",
                    width = 384,
                    height = 96,
                    line_length = 5,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 32)
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a2-mask.png",
                    width = 384,
                    height = 96,
                    line_length = 5,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 32),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a3.png",
                    width = 384,
                    height = 96,
                    line_length = 5,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -64)
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a3-mask.png",
                    width = 384,
                    height = 96,
                    line_length = 5,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -64),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a4.png",
                    width = 384,
                    height = 96,
                    line_length = 5,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -160)
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a4-mask.png",
                    width = 384,
                    height = 96,
                    line_length = 5,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -160),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
            }
        },
    },

    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-5.0, 0.0}, direction = defines.direction.west}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {5.0, 0.0}, direction = defines.direction.east}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -5.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, 5.0}, direction = defines.direction.south}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/yotoi-aloe-orchard.ogg", volume = 1.9},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/yotoi-aloe-orchard.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
