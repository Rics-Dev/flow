local M = {}

function M.get(palette)
    return {
        BufferLineFill = { bg = palette.background },
        BufferLineBackground = { fg = palette.light_gray, bg = palette.element_bg },
        BufferLineBufferVisible = { fg = palette.light_gray, bg = palette.element_bg },
        BufferLineBufferSelected = { fg = palette.bright_foreground, bg = palette.element_active, bold = true },
        BufferLineTab = { fg = palette.light_gray, bg = palette.element_bg },
        BufferLineTabSelected = { fg = palette.bright_foreground, bg = palette.element_active },
        BufferLineTabClose = { fg = palette.bright_red, bg = palette.element_bg },
        BufferLineIndicatorSelected = { fg = palette.bright_blue, bg = palette.element_active },
        -- Modified buffers
        BufferLineModified = { fg = palette.bright_yellow, bg = palette.element_bg },
        BufferLineModifiedVisible = { fg = palette.bright_yellow, bg = palette.element_bg },
        BufferLineModifiedSelected = { fg = palette.bright_yellow, bg = palette.element_active },
        -- Diagnostics
        BufferLineDiagnostic = { fg = palette.light_gray, bg = palette.element_bg },
        BufferLineDiagnosticVisible = { fg = palette.light_gray, bg = palette.element_bg },
        BufferLineDiagnosticSelected = { fg = palette.light_gray, bg = palette.element_active },
        -- Errors
        BufferLineError = { fg = palette.error, bg = palette.element_bg },
        BufferLineErrorVisible = { fg = palette.error, bg = palette.element_bg },
        BufferLineErrorSelected = { fg = palette.error, bg = palette.element_active },
        BufferLineErrorDiagnostic = { fg = palette.error, bg = palette.element_bg },
        BufferLineErrorDiagnosticVisible = { fg = palette.error, bg = palette.element_bg },
        BufferLineErrorDiagnosticSelected = { fg = palette.error, bg = palette.element_active },
        
        -- Warnings
        BufferLineWarning = { fg = palette.warning, bg = palette.element_bg },
        BufferLineWarningVisible = { fg = palette.warning, bg = palette.element_bg },
        BufferLineWarningSelected = { fg = palette.warning, bg = palette.element_active },
        BufferLineWarningDiagnostic = { fg = palette.warning, bg = palette.element_bg },
        BufferLineWarningDiagnosticVisible = { fg = palette.warning, bg = palette.element_bg },
        BufferLineWarningDiagnosticSelected = { fg = palette.warning, bg = palette.element_active },
        
        -- Info
        BufferLineInfo = { fg = palette.info, bg = palette.element_bg },
        BufferLineInfoVisible = { fg = palette.info, bg = palette.element_bg },
        BufferLineInfoSelected = { fg = palette.info, bg = palette.element_active },
        BufferLineInfoDiagnostic = { fg = palette.info, bg = palette.element_bg },
        BufferLineInfoDiagnosticVisible = { fg = palette.info, bg = palette.element_bg },
        BufferLineInfoDiagnosticSelected = { fg = palette.info, bg = palette.element_active },
        
        -- Hint
        BufferLineHint = { fg = palette.hint, bg = palette.element_bg },
        BufferLineHintVisible = { fg = palette.hint, bg = palette.element_bg },
        BufferLineHintSelected = { fg = palette.hint, bg = palette.element_active },
        BufferLineHintDiagnostic = { fg = palette.hint, bg = palette.element_bg },
        BufferLineHintDiagnosticVisible = { fg = palette.hint, bg = palette.element_bg },
        BufferLineHintDiagnosticSelected = { fg = palette.hint, bg = palette.element_active },
    }
end

return M
