-- Flow colorscheme for Lualine
-- Author: Ric's Dev

local palette = require("flow.palettes").palette

local flow = {}

flow.normal = {
  a = { fg = palette.background, bg = palette.bright_blue, gui = "bold" },
  b = { fg = palette.bright_foreground, bg = palette.element_active },
  c = { fg = palette.bright_foreground, bg = palette.element_bg },
}

flow.insert = {
  a = { fg = palette.background, bg = palette.green, gui = "bold" },
  b = { fg = palette.bright_foreground, bg = palette.element_active },
}

flow.visual = {
  a = { fg = palette.background, bg = palette.purple, gui = "bold" },
  b = { fg = palette.bright_foreground, bg = palette.element_active },
}

flow.replace = {
  a = { fg = palette.background, bg = palette.red, gui = "bold" },
  b = { fg = palette.bright_foreground, bg = palette.element_active },
}

flow.command = {
  a = { fg = palette.background, bg = palette.yellow, gui = "bold" },
  b = { fg = palette.bright_foreground, bg = palette.element_active },
}

flow.inactive = {
  a = { fg = palette.light_gray, bg = palette.element_bg },
  b = { fg = palette.light_gray, bg = palette.element_bg },
  c = { fg = palette.light_gray, bg = palette.element_bg },
}

return flow