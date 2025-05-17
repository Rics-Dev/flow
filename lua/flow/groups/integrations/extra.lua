local M = {}

function M.get(palette)
    return {
        -- snacks.nvim
        SnacksNormal = { fg = palette.bright_foreground, bg = palette.element_bg },
        SnacksError = { fg = palette.bright_foreground, bg = palette.error },
        SnacksWarn = { fg = palette.background, bg = palette.warning },
        SnacksInfo = { fg = palette.background, bg = palette.info },
        SnacksHint = { fg = palette.background, bg = palette.hint },

        -- noice.nvim
        NoiceCmdlinePopup = { fg = palette.bright_foreground, bg = palette.element_bg },
        NoiceCmdlinePopupBorder = { fg = palette.border, bg = palette.element_bg },
        NoicePopup = { fg = palette.bright_foreground, bg = palette.element_bg },
        NoicePopupBorder = { fg = palette.border, bg = palette.element_bg },
        NoiceVirtualText = { fg = palette.light_gray },
        NoiceLspProgressTitle = { fg = palette.bright_blue, bold = true },
        NoiceLspProgressClient = { fg = palette.bright_purple },
        NoiceLspProgressSpinner = { fg = palette.bright_blue },

        -- dressing.nvim
        DressingInputNormal = { fg = palette.bright_foreground, bg = palette.element_bg },
        DressingInputBorder = { fg = palette.border, bg = palette.element_bg },
        DressingInputTitle = { fg = palette.bright_blue, bold = true },
        DressingInputPrompt = { fg = palette.bright_blue },

        -- flash.nvim
        FlashLabel = { fg = palette.background, bg = palette.bright_blue, bold = true },
        FlashMatch = { fg = palette.bright_yellow, bg = palette.element_active, bold = true },
        FlashCurrent = { fg = palette.bright_foreground, bg = palette.bright_blue, bold = true },
        FlashBackdrop = { fg = palette.gray },
    }
end

return M 