local M = {}

function M.get(palette)
    return {
        -- snacks.nvim
        SnacksNormal = { fg = palette.bright_foreground, bg = palette.element_active },
        SnacksError = { fg = palette.bright_white, bg = palette.error, bold = true },
        SnacksWarn = { fg = palette.background, bg = palette.bright_yellow, bold = true },
        SnacksInfo = { fg = palette.background, bg = palette.bright_blue, bold = true },
        SnacksHint = { fg = palette.background, bg = palette.bright_cyan, bold = true },

        -- noice.nvim
        NoiceCmdlinePopup = { fg = palette.bright_foreground, bg = palette.element_selected },
        NoiceCmdlinePopupBorder = { fg = palette.bright_blue, bg = palette.element_selected },
        NoicePopup = { fg = palette.bright_foreground, bg = palette.element_selected },
        NoicePopupBorder = { fg = palette.bright_blue, bg = palette.element_selected },
        NoiceVirtualText = { fg = palette.light_gray, italic = true },
        NoiceLspProgressTitle = { fg = palette.bright_blue, bold = true },
        NoiceLspProgressClient = { fg = palette.bright_purple, bold = true },
        NoiceLspProgressSpinner = { fg = palette.bright_blue, bold = true },

        -- dressing.nvim
        DressingInputNormal = { fg = palette.bright_foreground, bg = palette.element_active },
        DressingInputBorder = { fg = palette.bright_blue, bg = palette.element_active },
        DressingInputTitle = { fg = palette.bright_blue, bg = palette.element_active, bold = true },
        DressingInputPrompt = { fg = palette.bright_blue, bg = palette.element_active, bold = true },

        -- flash.nvim
        FlashLabel = { fg = palette.background, bg = palette.bright_blue, bold = true },
        FlashMatch = { fg = palette.background, bg = palette.bright_yellow, bold = true },
        FlashCurrent = { fg = palette.bright_white, bg = palette.bright_blue, bold = true },
        FlashBackdrop = { fg = palette.gray, bg = palette.element_bg },
    }
end

return M 