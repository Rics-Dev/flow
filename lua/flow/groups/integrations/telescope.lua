local M = {}

function M.get(palette)
    return {
        TelescopeNormal = { fg = palette.bright_foreground, bg = palette.element_bg },
        TelescopeBorder = { fg = palette.border, bg = palette.element_bg },
        TelescopePromptNormal = { fg = palette.bright_foreground, bg = palette.element_active },
        TelescopePromptBorder = { fg = palette.border_focused, bg = palette.element_active },
        TelescopePromptTitle = { fg = palette.background, bg = palette.bright_blue, bold = true },
        TelescopePromptPrefix = { fg = palette.bright_blue },
        TelescopeResultsNormal = { fg = palette.bright_foreground, bg = palette.element_bg },
        TelescopeResultsBorder = { fg = palette.border, bg = palette.element_bg },
        TelescopeResultsTitle = { fg = palette.background, bg = palette.green, bold = true },
        TelescopeSelectionCaret = { fg = palette.bright_blue },
        TelescopeSelection = { fg = palette.bright_foreground, bg = palette.element_selected },
        TelescopeMatching = { fg = palette.bright_blue, bold = true },
        TelescopePreviewNormal = { fg = palette.bright_foreground, bg = palette.element_bg },
        TelescopePreviewBorder = { fg = palette.border, bg = palette.element_bg },
        TelescopePreviewTitle = { fg = palette.background, bg = palette.purple, bold = true },
    }
end

return M