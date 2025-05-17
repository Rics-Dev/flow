local M = {}

function M.get(palette)
    return {
        FlashMatch = { fg = palette.background, bg = palette.bright_purple, bold = true },
        FlashCurrent = { fg = palette.background, bg = palette.bright_blue, bold = true },
        FlashLabel = { fg = palette.background, bg = palette.bright_yellow, bold = true },
        FlashBackdrop = { fg = palette.light_gray },
        FlashPrompt = { fg = palette.bright_foreground, bold = true },
        FlashPromptIcon = { fg = palette.blue },
        FlashCursor = { fg = palette.background, bg = palette.bright_purple },
    }
end

return M
