local M = {}

function M.get(palette)
    return {
        TelescopeNormal = { fg = palette.bright_foreground, bg = palette.popup_bg },
        TelescopeBorder = { fg = palette.border, bg = palette.popup_bg },
        TelescopePromptNormal = { fg = palette.bright_foreground, bg = palette.element_active },
        TelescopePromptBorder = { fg = palette.border_focused, bg = palette.element_active },
        TelescopePromptTitle = { fg = palette.popup_bg, bg = palette.bright_blue, bold = true },
        TelescopePromptPrefix = { fg = palette.bright_blue },
        TelescopeResultsNormal = { fg = palette.bright_foreground, bg = palette.popup_bg },
        TelescopeResultsBorder = { fg = palette.border, bg = palette.popup_bg },
        TelescopeResultsTitle = { fg = palette.popup_bg, bg = palette.green, bold = true },
        TelescopeSelectionCaret = { fg = palette.bright_blue },
        TelescopeSelection = { fg = palette.bright_foreground, bg = palette.element_selected },
        TelescopeMatching = { fg = palette.bright_blue, bold = true },
        TelescopePreviewNormal = { fg = palette.bright_foreground, bg = palette.popup_bg },
        TelescopePreviewBorder = { fg = palette.border, bg = palette.popup_bg },
        TelescopePreviewTitle = { fg = palette.popup_bg, bg = palette.purple, bold = true },
    }
end

return M