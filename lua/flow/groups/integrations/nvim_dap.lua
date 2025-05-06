local M = {}

function M.get(palette)
    return {
        DapBreakpoint = { fg = palette.bright_red },
        DapBreakpointCondition = { fg = palette.bright_purple },
        DapLogPoint = { fg = palette.bright_blue },
        DapStopped = { fg = palette.bright_green },
        -- DAP UI elements
        DapUIVariable = { fg = palette.bright_foreground },
        DapUIScope = { fg = palette.bright_blue, bold = true },
        DapUIType = { fg = palette.yellow },
        DapUIValue = { fg = palette.bright_foreground },
        DapUIModifiedValue = { fg = palette.bright_blue, bold = true },
        DapUIDecoration = { fg = palette.bright_blue },
        DapUIThread = { fg = palette.bright_green },
        DapUIStoppedThread = { fg = palette.bright_blue, bold = true },
        DapUIFrameName = { fg = palette.bright_foreground },
        DapUISource = { fg = palette.purple },
        DapUILineNumber = { fg = palette.bright_blue },
        DapUIFloatBorder = { fg = palette.border },
        DapUIWatchesEmpty = { fg = palette.bright_red },
        DapUIWatchesValue = { fg = palette.bright_green },
        DapUIWatchesError = { fg = palette.bright_red },
        DapUIBreakpointsPath = { fg = palette.bright_blue },
        DapUIBreakpointsInfo = { fg = palette.bright_green },
        DapUIBreakpointsCurrentLine = { fg = palette.bright_green, bold = true },
    }
end

return M
