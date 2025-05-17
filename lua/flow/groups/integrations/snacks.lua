local M = {}

function M.get(palette)
    return {
        SnackTitle = { fg = palette.bright_foreground, bold = true },
        SnackBar = { fg = palette.bright_foreground, bg = palette.element_bg },
        SnackBarIcon = { fg = palette.bright_foreground },
        SnackSuccess = { fg = palette.background, bg = palette.green },
        SnackSuccessIcon = { fg = palette.background, bg = palette.green, bold = true },
        SnackInfo = { fg = palette.background, bg = palette.blue },
        SnackInfoIcon = { fg = palette.background, bg = palette.blue, bold = true },
        SnackWarning = { fg = palette.background, bg = palette.yellow },
        SnackWarningIcon = { fg = palette.background, bg = palette.yellow, bold = true },
        SnackError = { fg = palette.background, bg = palette.red },
        SnackErrorIcon = { fg = palette.background, bg = palette.red, bold = true },
        SnackBorder = { fg = palette.border, bg = palette.element_bg },
        
        SnackPickerNormal = { fg = palette.bright_foreground, bg = palette.background },
        SnackPickerBorder = { fg = palette.border, bg = palette.background },
        SnackPickerTitle = { fg = palette.bright_blue, bold = true, bg = palette.background },
        SnackPickerHeader = { fg = palette.bright_foreground, bg = palette.background },
        SnackPickerFooter = { fg = palette.light_gray, bg = palette.background },
        SnackPickerSelection = { fg = palette.bright_foreground, bg = palette.element_selected },
        SnackPickerMatching = { fg = palette.bright_blue, bold = true },
        SnackPickerCursor = { fg = palette.bright_blue },
    }
end

return M
