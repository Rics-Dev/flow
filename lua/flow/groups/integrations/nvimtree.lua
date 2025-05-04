local M = {}

function M.get(palette)
    return {
        NvimTreeNormal = { fg = palette.bright_foreground, bg = palette.background },
        NvimTreeNormalNC = { fg = palette.bright_foreground, bg = palette.background },
        NvimTreeRootFolder = { fg = palette.blue, bold = true },
        NvimTreeGitDirty = { fg = palette.yellow },
        NvimTreeGitNew = { fg = palette.green },
        NvimTreeGitDeleted = { fg = palette.red },
        NvimTreeSpecialFile = { fg = palette.purple, underline = true },
        NvimTreeIndentMarker = { fg = palette.gray },
        NvimTreeImageFile = { fg = palette.bright_purple },
        NvimTreeSymlink = { fg = palette.cyan },
        NvimTreeFolderName = { fg = palette.blue },
        NvimTreeOpenedFolderName = { fg = palette.bright_blue, bold = true },
        NvimTreeEmptyFolderName = { fg = palette.light_gray },
        NvimTreeFolderIcon = { fg = palette.blue },
        NvimTreeFileIcon = { fg = palette.bright_foreground },
        NvimTreeWindowPicker = { fg = palette.bright_foreground, bg = palette.element_active, bold = true },
    }
end

return M