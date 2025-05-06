local M = {}

function M.get(palette)
    return {
        TroubleText = { fg = palette.bright_foreground },
        TroubleCount = { fg = palette.bright_purple, bg = palette.element_active },
        TroubleNormal = { fg = palette.bright_foreground, bg = palette.element_bg },
        TroubleLocation = { fg = palette.light_gray },
        TroubleFile = { fg = palette.bright_blue },
        TroubleIndent = { fg = palette.indent_guide },
        TroubleCode = { fg = palette.yellow },
        TroubleFoldIcon = { fg = palette.bright_blue },
        TroublePreview = { fg = palette.bright_blue, underline = true },
        TroubleSource = { fg = palette.purple, italic = true },
        TroubleSignError = { fg = palette.error },
        TroubleSignWarning = { fg = palette.warning },
        TroubleSignInformation = { fg = palette.info },
        TroubleSignHint = { fg = palette.hint },
        TroubleSignOther = { fg = palette.bright_blue },
    }
end

return M
