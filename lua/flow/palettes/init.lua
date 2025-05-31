local M = {}

M.palette = {
    -- Base colors
    background         = "#0F1219",
    bright_foreground  = "#d7dae0",
    foreground         = "#abb2bf",
    cursor             = "#5ab0f6",
    cursor_text        = "#0F1219",
    selection_bg       = "#3b4559",
    selection_fg       = "#d7dae0",

    -- UI elements
    border             = "#23283a",
    border_focused     = "#495162",
    element_bg         = "#0F1219",
    element_hover      = "#1e242e",
    element_active     = "#2c313a",
    element_selected   = "#2c313a",
    element_disabled   = "#161a24",
    popup_bg           = "#0F1219",

    -- Gutter, line numbers, etc.
    light_gray         = "#697082",
    muted_foreground   = "#697082",
    disabled           = "#495162",
    gray               = "#3e4452",
    parameter          = "#d7dae0",
    identifier         = "#abb2bf",
    method             = "#61afef",
    keyword_control    = "#c678dd",

    -- Diff colors
    diff_add           = "#3b5135",
    diff_change        = "#4e3e30",
    diff_delete        = "#572a32",
    diff_text          = "#293b4d",

    -- LSP/diagnostics
    error              = "#ff4757",
    warning            = "#e5c07b",
    info               = "#5ab0f6",
    hint               = "#abb2bf",
    lsp_ref_text       = "#293b4d",
    lsp_ref_read       = "#293b4d",
    lsp_ref_write      = "#3b2d4e",
    lsp_inlay_hint     = "#262c38",

    -- Indent guides
    indent_guide       = "#1e242e",
    indent_guide_active= "#3e4452",

    -- Terminal colors (normal)
    black              = "#3f4451",
    red                = "#e06c75",
    green              = "#98c379",
    yellow             = "#e5c07b",
    blue               = "#61afef",
    purple             = "#c678dd",
    cyan               = "#56b6c2",
    white              = "#d7dae0",

    -- Terminal colors (bright)
    bright_black       = "#4f5666",
    bright_red         = "#ff616e",
    bright_green       = "#a5e075",
    bright_yellow      = "#ebc275",
    bright_blue        = "#5ab0f6",
    bright_purple      = "#de73ff",
    bright_cyan        = "#4dbdcb",
    bright_white       = "#e6e6e6",

    -- Extra (dim, gold, etc.)
    dim_black          = "#2e333d",
    dim_red            = "#c84a56",
    dim_green          = "#7ea560",
    dim_yellow         = "#c9a662",
    dim_blue           = "#4e94cd",
    dim_purple         = "#a462bd",
    dim_cyan           = "#479aa5",
    dim_white          = "#9199a5",
    gold               = "#d19a66",
    red_alt            = "#ff4757",
}

return M
