local M = {}

function M.get(palette)
    return {
        -- Treesitter groups
        ["@comment"] = { fg = palette.light_gray, italic = true },
        ["@error"] = { fg = palette.error },
        ["@none"] = { },
        ["@preproc"] = { fg = palette.purple },
        ["@define"] = { fg = palette.purple },
        ["@operator"] = { fg = palette.bright_foreground },
        
        -- Literals
        ["@string"] = { fg = palette.green },
        ["@string.regex"] = { fg = palette.green },
        ["@string.escape"] = { fg = palette.cyan, bold = true },
        ["@string.special"] = { fg = palette.cyan },
        ["@character"] = { fg = palette.green },
        ["@character.special"] = { fg = palette.cyan },
        ["@boolean"] = { fg = palette.yellow },
        ["@number"] = { fg = palette.yellow },
        ["@float"] = { fg = palette.yellow },
        
        -- Functions
        ["@function"] = { fg = palette.blue },
        ["@function.builtin"] = { fg = palette.bright_blue },
        ["@function.call"] = { fg = palette.blue },
        ["@function.macro"] = { fg = palette.purple },
        ["@method"] = { fg = palette.blue },
        ["@method.call"] = { fg = palette.blue },
        ["@constructor"] = { fg = palette.red, bold = true },
        ["@parameter"] = { fg = palette.bright_foreground },
        
        -- Keywords
        ["@keyword"] = { fg = palette.purple, bold = true },
        ["@keyword.function"] = { fg = palette.purple, bold = true },
        ["@keyword.operator"] = { fg = palette.bright_foreground },
        ["@keyword.return"] = { fg = palette.purple, bold = true },
        ["@conditional"] = { fg = palette.purple, italic = true },
        ["@repeat"] = { fg = palette.purple },
        ["@debug"] = { fg = palette.red },
        ["@label"] = { fg = palette.purple },
        ["@include"] = { fg = palette.purple },
        ["@exception"] = { fg = palette.purple },
        
        -- Types
        ["@type"] = { fg = palette.yellow, bold = true },
        ["@type.builtin"] = { fg = palette.yellow, italic = true },
        ["@type.definition"] = { fg = palette.yellow, bold = true },
        ["@type.qualifier"] = { fg = palette.purple },
        ["@storageclass"] = { fg = palette.purple },
        ["@attribute"] = { fg = palette.gold },
        ["@field"] = { fg = palette.red },
        ["@property"] = { fg = palette.red },
        
        -- Identifiers
        ["@variable"] = { fg = palette.bright_foreground },
        ["@variable.builtin"] = { fg = palette.yellow, italic = true },
        ["@constant"] = { fg = palette.yellow, bold = true },
        ["@constant.builtin"] = { fg = palette.yellow, bold = true },
        ["@constant.macro"] = { fg = palette.yellow },
        ["@namespace"] = { fg = palette.yellow },
        ["@symbol"] = { fg = palette.cyan, bold = true },
        
        -- Text
        ["@text"] = { fg = palette.bright_foreground },
        ["@text.strong"] = { fg = palette.yellow, bold = true },
        ["@text.emphasis"] = { fg = palette.purple, italic = true },
        ["@text.underline"] = { underline = true },
        ["@text.strike"] = { strikethrough = true },
        ["@text.title"] = { fg = palette.blue, bold = true },
        ["@text.literal"] = { fg = palette.green },
        ["@text.uri"] = { fg = palette.bright_blue, underline = true },
        ["@text.math"] = { fg = palette.cyan },
        ["@text.reference"] = { fg = palette.purple },
        ["@text.environment"] = { fg = palette.purple },
        ["@text.environment.name"] = { fg = palette.yellow },
        
        -- Tags
        ["@tag"] = { fg = palette.red },
        ["@tag.attribute"] = { fg = palette.gold },
        ["@tag.delimiter"] = { fg = palette.bright_foreground },
        
        -- Conceal
        ["@conceal"] = { fg = palette.gray },
        
        -- Spell
        ["@spell"] = { },
        ["@nospell"] = { },
        
        -- Semantic tokens
        ["@class"] = { fg = palette.yellow, bold = true },
        ["@struct"] = { fg = palette.yellow, bold = true },
        ["@enum"] = { fg = palette.yellow },
        ["@enumMember"] = { fg = palette.yellow },
        ["@event"] = { fg = palette.yellow },
        ["@interface"] = { fg = palette.yellow, italic = true },
        ["@modifier"] = { fg = palette.purple },
        ["@regexp"] = { fg = palette.green },
        ["@typeParameter"] = { fg = palette.yellow, italic = true },
        ["@decorator"] = { fg = palette.gold },
    }
end

return M