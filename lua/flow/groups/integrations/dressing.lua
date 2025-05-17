local M = {}

function M.get(palette)
    return {
        DressingInput = { fg = palette.bright_foreground, bg = palette.element_bg },
        DressingInputText = { fg = palette.bright_foreground },
        DressingInputPrefix = { fg = palette.bright_blue, bg = palette.element_bg },
        DressingInputCursorLine = { bg = palette.element_active },
        DressingInputBorder = { fg = palette.border, bg = palette.element_bg },
        DressingInputTitle = { fg = palette.bright_blue, bold = true, bg = palette.element_bg },

        DressingMenu = { fg = palette.bright_foreground, bg = palette.element_bg },
        DressingMenuBorder = { fg = palette.border, bg = palette.element_bg },
        DressingMenuCursorLine = { bg = palette.element_active },
        DressingMenuMath = { fg = palette.bright_blue, bold = true },
    }
end

return M
