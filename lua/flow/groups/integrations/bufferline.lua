local M = {}

function M.get(palette)
    return {
        -- Base bufferline components with improved contrast
        BufferLineFill = { bg = palette.background },
        BufferLineBackground = { fg = palette.light_gray, bg = palette.element_bg },
        BufferLineBufferVisible = { fg = palette.muted_foreground, bg = palette.element_bg },
        BufferLineBufferSelected = { 
            fg = palette.bright_foreground, 
            bg = palette.element_active, 
            bold = true,
            italic = false -- Prevent italic rendering issues with some fonts
        },
        
        -- Tab styling with better contrast
        BufferLineTab = { fg = palette.light_gray, bg = palette.element_bg },
        BufferLineTabSelected = { fg = palette.bright_foreground, bg = palette.element_active },
        BufferLineTabClose = { fg = palette.bright_red, bg = palette.element_bg },
        
        -- Indicators and separators with improved visibility
        BufferLineIndicatorSelected = { fg = palette.bright_blue, bg = palette.element_active },
        BufferLineSeparator = { fg = palette.border, bg = palette.element_bg },
        BufferLineSeparatorSelected = { fg = palette.border_focused, bg = palette.element_active },
        BufferLineSeparatorVisible = { fg = palette.border, bg = palette.element_bg },
        
        -- Improved icon support with distinct colors
        BufferLineDevIconDefault = { fg = palette.muted_foreground, bg = palette.element_bg },
        BufferLineDevIconDefaultSelected = { fg = palette.bright_foreground, bg = palette.element_active },
        BufferLineDevIconDefaultInactive = { fg = palette.disabled, bg = palette.element_bg },
        
        -- Modified buffers with enhanced visibility
        BufferLineModified = { fg = palette.bright_yellow, bg = palette.element_bg },
        BufferLineModifiedVisible = { fg = palette.bright_yellow, bg = palette.element_bg },
        BufferLineModifiedSelected = { fg = palette.bright_yellow, bg = palette.element_active },
        
        -- Diagnostics with better contrast and distinct colors
        BufferLineDiagnostic = { fg = palette.muted_foreground, bg = palette.element_bg },
        BufferLineDiagnosticVisible = { fg = palette.muted_foreground, bg = palette.element_bg },
        BufferLineDiagnosticSelected = { fg = palette.bright_foreground, bg = palette.element_active },
        
        -- Errors with more distinct colors
        BufferLineError = { fg = palette.error, bg = palette.element_bg },
        BufferLineErrorVisible = { fg = palette.error, bg = palette.element_bg },
        BufferLineErrorSelected = { fg = palette.error, bg = palette.element_active, bold = true },
        BufferLineErrorDiagnostic = { fg = palette.error, bg = palette.element_bg },
        BufferLineErrorDiagnosticVisible = { fg = palette.error, bg = palette.element_bg },
        BufferLineErrorDiagnosticSelected = { fg = palette.error, bg = palette.element_active, bold = true },
        
        -- Warnings with improved visibility
        BufferLineWarning = { fg = palette.warning, bg = palette.element_bg },
        BufferLineWarningVisible = { fg = palette.warning, bg = palette.element_bg },
        BufferLineWarningSelected = { fg = palette.warning, bg = palette.element_active, bold = true },
        BufferLineWarningDiagnostic = { fg = palette.warning, bg = palette.element_bg },
        BufferLineWarningDiagnosticVisible = { fg = palette.warning, bg = palette.element_bg },
        BufferLineWarningDiagnosticSelected = { fg = palette.warning, bg = palette.element_active, bold = true },
        
        -- Info with distinct styling
        BufferLineInfo = { fg = palette.info, bg = palette.element_bg },
        BufferLineInfoVisible = { fg = palette.info, bg = palette.element_bg },
        BufferLineInfoSelected = { fg = palette.info, bg = palette.element_active, bold = true },
        BufferLineInfoDiagnostic = { fg = palette.info, bg = palette.element_bg },
        BufferLineInfoDiagnosticVisible = { fg = palette.info, bg = palette.element_bg },
        BufferLineInfoDiagnosticSelected = { fg = palette.info, bg = palette.element_active, bold = true },
        
        -- Hint with enhanced contrast
        BufferLineHint = { fg = palette.hint, bg = palette.element_bg },
        BufferLineHintVisible = { fg = palette.hint, bg = palette.element_bg },
        BufferLineHintSelected = { fg = palette.hint, bg = palette.element_active, bold = true },
        BufferLineHintDiagnostic = { fg = palette.hint, bg = palette.element_bg },
        BufferLineHintDiagnosticVisible = { fg = palette.hint, bg = palette.element_bg },
        BufferLineHintDiagnosticSelected = { fg = palette.hint, bg = palette.element_active, bold = true },
        
        -- Pick mode with improved visibility
        BufferLinePickSelected = { fg = palette.background, bg = palette.bright_blue, bold = true },
        BufferLinePickVisible = { fg = palette.background, bg = palette.blue, bold = true },
        BufferLinePick = { fg = palette.background, bg = palette.blue, bold = true },
        
        -- Special handling for symbols and numbers
        BufferLineNumbers = { fg = palette.muted_foreground, bg = palette.element_bg },
        BufferLineNumbersSelected = { fg = palette.bright_foreground, bg = palette.element_active },
        BufferLineNumbersVisible = { fg = palette.muted_foreground, bg = palette.element_bg },
        
        -- Duplicate buffer indicators
        BufferLineDuplicate = { fg = palette.disabled, bg = palette.element_bg, italic = true },
        BufferLineDuplicateSelected = { fg = palette.light_gray, bg = palette.element_active, italic = true },
        BufferLineDuplicateVisible = { fg = palette.disabled, bg = palette.element_bg, italic = true },
        
        -- Type inference handling - ensure different colors
        BufferLineRightCustomAreaText1 = { fg = palette.blue, bg = palette.element_bg },
        BufferLineRightCustomAreaText2 = { fg = palette.yellow, bg = palette.element_bg },
        BufferLineCloseButton = { fg = palette.light_gray, bg = palette.element_bg },
        BufferLineCloseButtonSelected = { fg = palette.bright_red, bg = palette.element_active },
        BufferLineCloseButtonVisible = { fg = palette.light_gray, bg = palette.element_bg },
    }
end

return M
