local M = {}

function M.get(palette)
    return {
        WhichKey = { fg = palette.bright_purple, bold = true },
        WhichKeyGroup = { fg = palette.bright_blue },
        WhichKeySeparator = { fg = palette.light_gray },
        WhichKeyDesc = { fg = palette.bright_foreground },
        WhichKeyFloat = { bg = palette.element_bg },
        WhichKeyBorder = { fg = palette.border, bg = palette.element_bg },
        WhichKeyValue = { fg = palette.light_gray },
    }
end

return M
