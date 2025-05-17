local M = {}

function M.get(palette)
    return {
        -- NeoGit highlights
        NeogitBranch = { fg = palette.purple },
        NeogitRemote = { fg = palette.purple },
        NeogitDiffAdd = { fg = palette.green },
        NeogitDiffDelete = { fg = palette.red },
        
        -- Hop/Leap/Flash highlights
        HopNextKey = { fg = palette.bright_purple, bold = true },
        HopNextKey1 = { fg = palette.bright_blue, bold = true },
        HopNextKey2 = { fg = palette.blue },
        HopUnmatched = { fg = palette.light_gray },
        
        LeapMatch = { fg = palette.bright_purple, bold = true },
        LeapLabelPrimary = { fg = palette.bright_purple, bold = true },
        LeapLabelSecondary = { fg = palette.bright_blue, bold = true },
        
        FlashMatch = { fg = palette.background, bg = palette.bright_purple, bold = true },
        FlashCurrent = { fg = palette.background, bg = palette.bright_blue, bold = true },
        FlashLabel = { fg = palette.background, bg = palette.bright_yellow, bold = true },
        
        -- Fidget
        FidgetTask = { fg = palette.light_gray },
        FidgetTitle = { fg = palette.bright_blue, bold = true },
        
        -- Mini.nvim
        MiniStatuslineFilename = { fg = palette.foreground, bg = palette.element_bg },
        MiniStatuslineDevinfo = { fg = palette.foreground, bg = palette.element_active },
        MiniStatuslineFileinfo = { fg = palette.foreground, bg = palette.element_active },
        MiniStatuslineInactive = { fg = palette.light_gray, bg = palette.element_bg },
        MiniStatuslineModeNormal = { fg = palette.background, bg = palette.blue, bold = true },
        MiniStatuslineModeInsert = { fg = palette.background, bg = palette.green, bold = true },
        MiniStatuslineModeVisual = { fg = palette.background, bg = palette.purple, bold = true },
        MiniStatuslineModeReplace = { fg = palette.background, bg = palette.red, bold = true },
        MiniStatuslineModeCommand = { fg = palette.background, bg = palette.yellow, bold = true },
        MiniStatuslineModeOther = { fg = palette.background, bg = palette.light_gray, bold = true },
        
        -- Navic (breadcrumbs)
        NavicIconsFile = { fg = palette.foreground },
        NavicIconsModule = { fg = palette.yellow },
        NavicIconsNamespace = { fg = palette.foreground },
        NavicIconsPackage = { fg = palette.foreground },
        NavicIconsClass = { fg = palette.yellow },
        NavicIconsMethod = { fg = palette.blue },
        NavicIconsProperty = { fg = palette.red },
        NavicIconsField = { fg = palette.red },
        NavicIconsConstructor = { fg = palette.yellow },
        NavicIconsEnum = { fg = palette.yellow },
        NavicIconsInterface = { fg = palette.yellow },
        NavicIconsFunction = { fg = palette.blue },
        NavicIconsVariable = { fg = palette.foreground },
        NavicIconsConstant = { fg = palette.yellow },
        NavicIconsString = { fg = palette.green },
        NavicIconsNumber = { fg = palette.yellow },
        NavicIconsBoolean = { fg = palette.yellow },
        NavicIconsArray = { fg = palette.yellow },
        NavicIconsObject = { fg = palette.yellow },
        NavicIconsKey = { fg = palette.purple },
        NavicIconsNull = { fg = palette.yellow },
        NavicIconsEnumMember = { fg = palette.red },
        NavicIconsStruct = { fg = palette.yellow },
        NavicIconsEvent = { fg = palette.yellow },
        NavicIconsOperator = { fg = palette.foreground },
        NavicIconsTypeParameter = { fg = palette.red },
        NavicText = { fg = palette.foreground },
        NavicSeparator = { fg = palette.foreground },
    }
end

return M 