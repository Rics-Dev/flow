local M = {}

function M.get(palette)
    return {
        -- Base bufferline components - match with background color
        BufferLineFill = { bg = palette.background },
        BufferLineBackground = { fg = palette.light_gray, bg = palette.background },
        BufferLineBufferVisible = { fg = palette.muted_foreground, bg = palette.background },
        BufferLineBufferSelected = { 
            fg = palette.bright_foreground, 
            bg = palette.background, 
            bold = true,
            italic = false -- Prevent italic rendering issues with some fonts
        },
        
        -- Tab styling with background color
        BufferLineTab = { fg = palette.light_gray, bg = palette.background },
        BufferLineTabSelected = { fg = palette.bright_foreground, bg = palette.background },
        BufferLineTabClose = { fg = palette.bright_red, bg = palette.background },
        
        -- Indicators and separators with improved visibility
        BufferLineIndicatorSelected = { fg = palette.bright_blue, bg = palette.background },
        BufferLineSeparator = { fg = palette.border, bg = palette.background },
        BufferLineSeparatorSelected = { fg = palette.border_focused, bg = palette.background },
        BufferLineSeparatorVisible = { fg = palette.border, bg = palette.background },
        
        -- Improved icon support with distinct colors
        BufferLineDevIconDefault = { fg = palette.muted_foreground, bg = palette.background },
        BufferLineDevIconDefaultSelected = { fg = palette.bright_foreground, bg = palette.background },
        BufferLineDevIconDefaultInactive = { fg = palette.disabled, bg = palette.background },
        
        -- Modified buffers with enhanced visibility
        BufferLineModified = { fg = palette.bright_yellow, bg = palette.background },
        BufferLineModifiedVisible = { fg = palette.bright_yellow, bg = palette.background },
        BufferLineModifiedSelected = { fg = palette.bright_yellow, bg = palette.background },
        
        -- Diagnostics with better contrast and distinct colors
        BufferLineDiagnostic = { fg = palette.muted_foreground, bg = palette.background },
        BufferLineDiagnosticVisible = { fg = palette.muted_foreground, bg = palette.background },
        BufferLineDiagnosticSelected = { fg = palette.bright_foreground, bg = palette.background },
        
        -- Errors with more distinct colors
        BufferLineError = { fg = palette.error, bg = palette.background },
        BufferLineErrorVisible = { fg = palette.error, bg = palette.background },
        BufferLineErrorSelected = { fg = palette.error, bg = palette.background, bold = true },
        BufferLineErrorDiagnostic = { fg = palette.error, bg = palette.background },
        BufferLineErrorDiagnosticVisible = { fg = palette.error, bg = palette.background },
        BufferLineErrorDiagnosticSelected = { fg = palette.error, bg = palette.background, bold = true },
        
        -- Warnings with improved visibility
        BufferLineWarning = { fg = palette.warning, bg = palette.background },
        BufferLineWarningVisible = { fg = palette.warning, bg = palette.background },
        BufferLineWarningSelected = { fg = palette.warning, bg = palette.background, bold = true },
        BufferLineWarningDiagnostic = { fg = palette.warning, bg = palette.background },
        BufferLineWarningDiagnosticVisible = { fg = palette.warning, bg = palette.background },
        BufferLineWarningDiagnosticSelected = { fg = palette.warning, bg = palette.background, bold = true },
        
        -- Info with distinct styling
        BufferLineInfo = { fg = palette.info, bg = palette.background },
        BufferLineInfoVisible = { fg = palette.info, bg = palette.background },
        BufferLineInfoSelected = { fg = palette.info, bg = palette.background, bold = true },
        BufferLineInfoDiagnostic = { fg = palette.info, bg = palette.background },
        BufferLineInfoDiagnosticVisible = { fg = palette.info, bg = palette.background },
        BufferLineInfoDiagnosticSelected = { fg = palette.info, bg = palette.background, bold = true },
        
        -- Hint with enhanced contrast
        BufferLineHint = { fg = palette.hint, bg = palette.background },
        BufferLineHintVisible = { fg = palette.hint, bg = palette.background },
        BufferLineHintSelected = { fg = palette.hint, bg = palette.background, bold = true },
        BufferLineHintDiagnostic = { fg = palette.hint, bg = palette.background },
        BufferLineHintDiagnosticVisible = { fg = palette.hint, bg = palette.background },
        BufferLineHintDiagnosticSelected = { fg = palette.hint, bg = palette.background, bold = true },
        
        -- Pick mode with improved visibility
        BufferLinePickSelected = { fg = palette.background, bg = palette.bright_blue, bold = true },
        BufferLinePickVisible = { fg = palette.background, bg = palette.blue, bold = true },
        BufferLinePick = { fg = palette.background, bg = palette.blue, bold = true },
        
        -- Special handling for symbols and numbers
        BufferLineNumbers = { fg = palette.muted_foreground, bg = palette.background },
        BufferLineNumbersSelected = { fg = palette.bright_foreground, bg = palette.background },
        BufferLineNumbersVisible = { fg = palette.muted_foreground, bg = palette.background },
        
        -- Duplicate buffer indicators
        BufferLineDuplicate = { fg = palette.disabled, bg = palette.background, italic = true },
        BufferLineDuplicateSelected = { fg = palette.light_gray, bg = palette.background, italic = true },
        BufferLineDuplicateVisible = { fg = palette.disabled, bg = palette.background, italic = true },
        
        -- Type inference handling - ensure different colors
        BufferLineRightCustomAreaText1 = { fg = palette.blue, bg = palette.background },
        BufferLineRightCustomAreaText2 = { fg = palette.yellow, bg = palette.background },
        BufferLineCloseButton = { fg = palette.light_gray, bg = palette.background },
        BufferLineCloseButtonSelected = { fg = palette.bright_red, bg = palette.background },
        BufferLineCloseButtonVisible = { fg = palette.light_gray, bg = palette.background },
    }
end

return M
