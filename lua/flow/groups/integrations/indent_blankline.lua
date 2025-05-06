local M = {}

function M.get(palette)
    return {
        -- Legacy indent-blankline
        IndentBlanklineChar = { fg = palette.indent_guide },
        IndentBlanklineContextChar = { fg = palette.indent_guide_active },
        IndentBlanklineSpaceChar = { fg = palette.indent_guide },
        IndentBlanklineSpaceCharBlankline = { fg = palette.indent_guide },
        -- New indent-blankline v3+
        IblIndent = { fg = palette.indent_guide },
        IblScope = { fg = palette.indent_guide_active },
        IblWhitespace = { fg = palette.indent_guide },
    }
end

return M
