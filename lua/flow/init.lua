local M = {}
local palette = require("flow.palettes").palette

-- Default options
M.options = {
    transparent_background = false,
    term_colors = false,
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = { "bold" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = { "bold" },
        operators = {},
    },
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
    },
}

-- Setup function
function M.setup(options)
    M.options = vim.tbl_deep_extend("force", M.options, options or {})
end

-- Apply highlight groups
local function apply_highlights()
    local highlights = {
        -- Editor
        Normal = { fg = palette.bright_foreground, bg = palette.background },
        NormalFloat = { fg = palette.bright_foreground, bg = palette.element_bg },
        FloatBorder = { fg = palette.border, bg = palette.element_bg },
        Cursor = { fg = palette.background, bg = palette.bright_foreground },
        CursorLine = { bg = palette.cursorline },
        CursorLineNr = { fg = palette.bright_foreground, bold = true },
        LineNr = { fg = palette.light_gray },
        SignColumn = { bg = palette.background },
        ColorColumn = { bg = palette.cursorline },
        VertSplit = { fg = palette.border },
        Visual = { bg = palette.highlight_bg },
        VisualNOS = { bg = palette.highlight_bg },
        Search = { fg = palette.background, bg = palette.bright_blue },
        IncSearch = { fg = palette.background, bg = palette.bright_yellow },
        Pmenu = { fg = palette.bright_foreground, bg = palette.element_bg },
        PmenuSel = { fg = palette.bright_foreground, bg = palette.element_active, bold = true },
        PmenuSbar = { bg = palette.element_bg },
        PmenuThumb = { bg = palette.gray },
        StatusLine = { fg = palette.bright_foreground, bg = palette.element_bg },
        StatusLineNC = { fg = palette.light_gray, bg = palette.element_bg },
        WildMenu = { fg = palette.bright_foreground, bg = palette.element_active },
        TabLine = { fg = palette.light_gray, bg = palette.element_bg },
        TabLineFill = { bg = palette.element_bg },
        TabLineSel = { fg = palette.bright_foreground, bg = palette.element_active },
        Title = { fg = palette.bright_blue, bold = true },
        Directory = { fg = palette.blue },
        MatchParen = { fg = palette.bright_blue, underline = true },
        NonText = { fg = palette.gray },
        SpecialKey = { fg = palette.gray },
        Folded = { fg = palette.light_gray, bg = palette.element_hover },
        FoldColumn = { fg = palette.light_gray, bg = palette.background },
        EndOfBuffer = { fg = palette.gray },
        
        -- Syntax
        Comment = { fg = palette.light_gray, style = M.options.styles.comments },
        Constant = { fg = palette.yellow, bold = true },
        String = { fg = palette.green },
        Character = { fg = palette.green },
        Number = { fg = palette.yellow },
        Boolean = { fg = palette.yellow },
        Float = { fg = palette.yellow },
        Identifier = { fg = palette.bright_foreground },
        Function = { fg = palette.blue },
        Statement = { fg = palette.purple, bold = true },
        Conditional = { fg = palette.purple, style = M.options.styles.conditionals },
        Repeat = { fg = palette.purple, style = M.options.styles.loops },
        Label = { fg = palette.purple },
        Operator = { fg = palette.bright_foreground },
        Keyword = { fg = palette.purple, style = M.options.styles.keywords },
        Exception = { fg = palette.purple },
        PreProc = { fg = palette.purple },
        Include = { fg = palette.purple },
        Define = { fg = palette.purple },
        Macro = { fg = palette.purple },
        PreCondit = { fg = palette.purple },
        Type = { fg = palette.yellow, style = M.options.styles.types },
        StorageClass = { fg = palette.yellow },
        Structure = { fg = palette.yellow },
        Typedef = { fg = palette.yellow },
        Special = { fg = palette.cyan },
        SpecialChar = { fg = palette.cyan, bold = true },
        Tag = { fg = palette.red },
        Delimiter = { fg = palette.bright_foreground },
        SpecialComment = { fg = palette.light_gray, italic = true },
        Debug = { fg = palette.red },
        Underlined = { underline = true },
        Error = { fg = palette.error },
        Todo = { fg = palette.purple, bold = true },
        
        -- Diff
        DiffAdd = { bg = palette.diff_add },
        DiffChange = { bg = palette.diff_change },
        DiffDelete = { bg = palette.diff_delete },
        DiffText = { bg = palette.diff_text },
        
        -- Diagnostics
        DiagnosticError = { fg = palette.error },
        DiagnosticWarn = { fg = palette.warning },
        DiagnosticInfo = { fg = palette.info },
        DiagnosticHint = { fg = palette.hint },
        DiagnosticUnderlineError = { undercurl = true, sp = palette.error },
        DiagnosticUnderlineWarn = { undercurl = true, sp = palette.warning },
        DiagnosticUnderlineInfo = { undercurl = true, sp = palette.info },
        DiagnosticUnderlineHint = { undercurl = true, sp = palette.hint },
    }
    
    -- Load plugin integrations
    if M.options.integrations then
        local integration_highlights = require("flow.groups.integrations").get(palette, M.options)
        highlights = vim.tbl_deep_extend("force", highlights, integration_highlights)
    end
    
    -- Apply highlights
    for group, styles in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, styles)
    end
    
    -- Terminal colors
    if M.options.term_colors then
        vim.g.terminal_color_0 = palette.black
        vim.g.terminal_color_1 = palette.red
        vim.g.terminal_color_2 = palette.green
        vim.g.terminal_color_3 = palette.yellow
        vim.g.terminal_color_4 = palette.blue
        vim.g.terminal_color_5 = palette.purple
        vim.g.terminal_color_6 = palette.cyan
        vim.g.terminal_color_7 = palette.white
        vim.g.terminal_color_8 = palette.bright_black
        vim.g.terminal_color_9 = palette.bright_red
        vim.g.terminal_color_10 = palette.bright_green
        vim.g.terminal_color_11 = palette.bright_yellow
        vim.g.terminal_color_12 = palette.bright_blue
        vim.g.terminal_color_13 = palette.bright_purple
        vim.g.terminal_color_14 = palette.bright_cyan
        vim.g.terminal_color_15 = palette.bright_white
    end
end

-- Load the colorscheme
function M.load()
    -- Clear existing highlights
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    
    -- Set colorscheme name
    vim.g.colors_name = "flow"
    
    -- Set options
    vim.o.termguicolors = true
    
    -- Apply highlights
    apply_highlights()
end

return M