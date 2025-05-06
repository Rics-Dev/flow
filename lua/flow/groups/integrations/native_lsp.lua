local M = {}

function M.get(palette)
    return {
        -- LSP References
        LspReferenceText = { bg = palette.lsp_ref_text },
        LspReferenceRead = { bg = palette.lsp_ref_read },
        LspReferenceWrite = { bg = palette.lsp_ref_write },
        -- LSP Signature
        LspSignatureActiveParameter = { fg = palette.bright_yellow, bold = true, italic = true },
        -- LSP Code Lens & Inlay Hints
        LspCodeLens = { fg = palette.light_gray, italic = true },
        LspInlayHint = { fg = palette.light_gray, bg = palette.lsp_inlay_hint, italic = true },
        -- Floating windows
        LspInfoBorder = { fg = palette.border, bg = palette.element_bg },
        -- Semantic tokens
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
        ["@lsp.type.type"] = { link = "@type" },
        ["@lsp.type.typeParameter"] = { link = "@type.definition" },
        ["@lsp.type.variable"] = { link = "@variable" },
        ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    }
end

return M
