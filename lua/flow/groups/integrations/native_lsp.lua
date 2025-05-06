local M = {}

function M.get(palette)
    return {
        -- LSP References with improved contrast
        LspReferenceText = { bg = palette.lsp_ref_text },
        LspReferenceRead = { bg = palette.lsp_ref_read },
        LspReferenceWrite = { bg = palette.lsp_ref_write },
        
        -- LSP Signature with better visibility
        LspSignatureActiveParameter = { fg = palette.bright_yellow, bold = true, italic = true },
        
        -- LSP Code Lens & Inlay Hints with enhanced contrast
        -- This fixes the type inference having the same color for text and background
        LspCodeLens = { fg = palette.light_gray, italic = true },
        LspInlayHint = { fg = palette.cyan, bg = palette.lsp_inlay_hint, italic = true },
        
        -- Floating windows with consistent styling
        LspInfoBorder = { fg = palette.border, bg = palette.element_bg },
        
        -- Semantic tokens with improved distinction
        ["@lsp.type.class"] = { link = "@type" },
        ["@lsp.type.decorator"] = { link = "@attribute" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.function"] = { link = "@function" },
        ["@lsp.type.interface"] = { fg = palette.yellow, italic = true },
        ["@lsp.type.macro"] = { link = "@macro" },
        ["@lsp.type.method"] = { link = "@method" },
        ["@lsp.type.namespace"] = { link = "@namespace" },
        ["@lsp.type.parameter"] = { link = "Parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.struct"] = { link = "@type" },
        ["@lsp.type.type"] = { fg = palette.bright_yellow, bold = true }, -- Enhanced visibility for types
        ["@lsp.type.typeParameter"] = { fg = palette.bright_yellow, italic = true }, -- Enhanced visibility
        ["@lsp.type.variable"] = { link = "@variable" },
        ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
        
        -- Added specific type inference highlights
        ["@lsp.type.typeDefinition"] = { fg = palette.bright_yellow, bold = true }, -- For type definitions
        ["@lsp.mod.readonly"] = { italic = true }, -- For readonly/const variables
        ["@lsp.mod.typeHint"] = { fg = palette.bright_cyan, bg = palette.lsp_inlay_hint, italic = true }, -- For type hints
    }
end

return M
