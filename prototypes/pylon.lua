local big_pole = data.raw["electric-pole"]["big-electric-pole"]

scale = 1.5
local pylon =  {
    type = "electric-pole",
    name = "po-huge-electric-pole",
    icon = "__PowerOverload__/graphics/big-electric-pole-icon.png",
    icon_size = 32, icon_mipmaps = 1,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 0.1, result = "po-huge-electric-pole"},
    max_health = 250,
    corpse = "big-electric-pole-remnants",
    dying_explosion = "big-electric-pole-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-scale+(1-0.65),-scale+(1-0.65)}, {scale-(1-0.65), scale-(1-0.65)}},  -- {{-0.65, -0.65}, {0.65, 0.65}},
    selection_box = {{-1*scale, -1*scale}, {1*scale, 1*scale}},  -- {{-1, -1}, {1, 1}}
    damaged_trigger_effect = big_pole.damaged_trigger_effect,
    drawing_box = {{-1*scale, -3*scale}, {1*scale, 0.5*scale}},
    maximum_wire_distance = 50,
    supply_area_distance = 0,
    vehicle_impact_sound =  big_pole.vehicle_impact_sound,
    open_sound = big_pole.open_sound,
    close_sound = big_pole.close_sound,
    pictures =
    {
      filename = "__PowerOverload__/graphics/big-electric-pole.png",
      priority = "extra-high",
      width = 168,
      height = 165,
      direction_count = 4,
      shift = {1.6*scale, -1.1*scale}, -- {1.6, -1.1},
      scale = scale,
      --[[hr_version =
      {
        filename = "__PowerOverload__/graphics/hr-big-electric-pole.png",
        priority = "extra-high",
        width = 168*2,
        height = 165*2,
        direction_count = 4,
        shift = {1.6*scale, -1.1*scale}, -- {1.6, -1.1},
        scale = scale*0.5
      }]]
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {2.7*scale, 0},
          green = {1.8*scale, 0},
          red = {3.6*scale, 0}
        },
        wire =
        {
          copper = {0, -3.125*scale},
          green = {-0.59375*scale, -3.125*scale},
          red = {0.625*scale, -3.125*scale}
        }
      },
      {
        shadow =
        {
          copper = {3.1*scale, 0.2*scale},
          green = {2.3*scale, -0.3*scale},
          red = {3.8*scale, 0.6*scale}
        },
        wire =
        {
          copper = {-0.0625*scale, -3.125*scale},
          green = {-0.5*scale, -3.4375*scale},
          red = {0.34375*scale, -2.8125*scale}
        }
      },
      {
        shadow =
        {
          copper = {2.9*scale, 0.06*scale},
          green = {3.0*scale, -0.6*scale},
          red = {3.0*scale, 0.8*scale}
        },
        wire =
        {
          copper = {-0.09375*scale, -3.09375*scale},
          green = {-0.09375*scale, -3.53125*scale},
          red = {-0.09375*scale, -2.65625*scale}
        }
      },
      {
        shadow =
        {
          copper = {3.1*scale, 0.2*scale},
          green = {3.8*scale, -0.3*scale},
          red = {2.35*scale, 0.6*scale}
        },
        wire =
        {
          copper = {-0.0625*scale, -3.1875*scale},
          green = {0.375*scale, -3.5*scale},
          red = {-0.46875*scale, -2.90625*scale}
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale",
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/big-electric-pole/big-electric-pole-reflection.png",
        priority = "extra-high",
        width = 16,
        height = 32,
        shift = util.by_pixel(0, 60),
        variation_count = 1,
        scale = 5*scale
      },
      rotate = false,
      orientation_to_variation = false
    }
  }

local pylon_item = table.deepcopy(data.raw.item["big-electric-pole"])
pylon_item.name = "po-huge-electric-pole"
pylon_item.place_result = "po-huge-electric-pole"
pylon_item.icon = "__PowerOverload__/graphics/big-electric-pole-icon.png"
pylon_item.icon_size = 32
pylon_item.icon_mipmaps = 1


pylon_recipe = {
  type = "recipe",
  name = "po-huge-electric-pole",
  result = "po-huge-electric-pole",
  ingredients =
  {
    {"iron-stick", 20},
    {"steel-plate", 15},
    {"advanced-circuit", 10},
    {"copper-plate", 15}
  },
  energy_required = 1.5,  -- in seconds
  enabled = false
}

data:extend{pylon, pylon_item, pylon_recipe}