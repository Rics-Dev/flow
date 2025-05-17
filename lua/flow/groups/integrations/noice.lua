local M = {}

function M.get(palette)
    return {
        NoiceCmdline = { fg = palette.bright_foreground, bg = palette.element_bg },
        NoiceCmdlineIcon = { fg = palette.bright_blue },
        NoiceCmdlineIconSearch = { fg = palette.bright_yellow },
        NoiceCmdlinePopup = { bg = palette.element_bg },
        NoiceCmdlinePopupBorder = { fg = palette.border, bg = palette.element_bg },
        NoiceCmdlinePopupTitle = { fg = palette.bright_blue, bold = true },
        NoiceCmdlinePrompt = { fg = palette.bright_purple, bold = true },

        NoiceConfirm = { bg = palette.element_bg },
        NoiceConfirmBorder = { fg = palette.border, bg = palette.element_bg },

        NoiceFormatConfirm = { bg = palette.element_active },
        NoiceFormatConfirmDefault = { fg = palette.bright_blue, bold = true },
        
        NoiceLspProgressTitle = { fg = palette.bright_foreground },
        NoiceLspProgressClient = { fg = palette.blue },
        NoiceLspProgressSpinner = { fg = palette.bright_purple },
        
        NoicePopup = { bg = palette.element_bg },
        NoicePopupBorder = { fg = palette.border, bg = palette.element_bg },
        
        NoiceVirtualText = { fg = palette.light_gray, italic = true },
        NoiceScrollbar = { bg = palette.element_bg },
        NoiceScrollbarThumb = { bg = palette.element_active },
    }
end

return M
