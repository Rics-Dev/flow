local M = {}

function M.get(palette)
    return {
        NotifyERRORBorder = { fg = palette.error },
        NotifyWARNBorder = { fg = palette.warning },
        NotifyINFOBorder = { fg = palette.info },
        NotifyDEBUGBorder = { fg = palette.light_gray },
        NotifyTRACEBorder = { fg = palette.bright_purple },
        
        NotifyERRORIcon = { fg = palette.error },
        NotifyWARNIcon = { fg = palette.warning },
        NotifyINFOIcon = { fg = palette.info },
        NotifyDEBUGIcon = { fg = palette.light_gray },
        NotifyTRACEIcon = { fg = palette.bright_purple },
        
        NotifyERRORTitle = { fg = palette.error, bold = true },
        NotifyWARNTitle = { fg = palette.warning, bold = true },
        NotifyINFOTitle = { fg = palette.info, bold = true },
        NotifyDEBUGTitle = { fg = palette.light_gray, bold = true },
        NotifyTRACETitle = { fg = palette.bright_purple, bold = true },
        
        NotifyERRORBody = { fg = palette.bright_foreground },
        NotifyWARNBody = { fg = palette.bright_foreground },
        NotifyINFOBody = { fg = palette.bright_foreground },
        NotifyDEBUGBody = { fg = palette.bright_foreground },
        NotifyTRACEBody = { fg = palette.bright_foreground },
    }
end

return M
