local M = {}

function M.get(palette)
    return {
        GitSignsAdd = { fg = palette.bright_green },
        GitSignsChange = { fg = palette.bright_yellow },
        GitSignsDelete = { fg = palette.bright_red },
        GitSignsAddNr = { fg = palette.bright_green },
        GitSignsChangeNr = { fg = palette.bright_yellow },
        GitSignsDeleteNr = { fg = palette.bright_red },
        GitSignsAddLn = { bg = palette.diff_add },
        GitSignsChangeLn = { bg = palette.diff_change },
        GitSignsDeleteLn = { bg = palette.diff_delete },
        GitSignsCurrentLineBlame = { fg = palette.light_gray, italic = true },
    }
end

return M