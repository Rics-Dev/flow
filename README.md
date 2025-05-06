# Flow Colorscheme for Neovim

A dark, elegant colorscheme for Neovim inspired by modern UI design principles, with carefully tuned colors for optimal readability and reduced eye strain.

## ✨ Features

- **Clean, modern dark theme** with carefully selected colors
- **Syntax highlighting optimized for readability** and code comprehension
- **Semantic token support** for enhanced code understanding
- **Low contrast background** with carefully balanced foreground colors to reduce eye strain
- **Consistent styling** across plugins and UI elements
- **Full plugin integrations** for a cohesive experience

### Supported Plugins

- NvimTree
- Telescope
- Treesitter
- GitSigns
- BufferLine
- Which-Key
- LSP (Diagnostics, References, Inlay Hints)
- Indent-Blankline
- Trouble.nvim
- nvim-cmp
- nvim-dap
- nvim-notify

## 🚀 Installation

### Using Packer

```lua
use {
  'Rics-Dev/flow',
  config = function()
    require('flow').setup() -- Optional: for customization
    vim.cmd('colorscheme flow')
  end
}
```

### Using Lazy.nvim

```lua
{
  'Rics-Dev/flow',
  lazy = false,
  priority = 1000,
  config = function()
    require('flow').setup() -- Optional: for customization
    vim.cmd('colorscheme flow')
  end,
}
```

## ⚙️ Configuration

You can customize the colorscheme by passing options to the setup function:

```lua
require('flow').setup({
  transparent_background = false, -- Set to true for transparent background
  term_colors = true,             -- Set terminal colors
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = { "italic" },
    functions = {},
    keywords = { "bold" },
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = { "bold" },
    operators = {},
    parameters = { "italic" },
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    treesitter = true,
    indent_blankline = true,
    native_lsp = true,
    nvim_dap = true,
    lsp_trouble = true,
    which_key = true,
    bufferline = true,
    notify = true,
  },
  features = {
    illuminate = {
      enabled = true,
      background_only = false,
    },
    dim_inactive = {
      enabled = false,
      percentage = 0.15,
    },
    indent_guides = {
      enabled = true,
      colored_indent_levels = false,
    },
  },
})
```

## 🔄 Plugin Integrations

### Lualine Integration

To use Flow with Lualine:

```lua
require('lualine').setup {
  options = {
    theme = 'flow',
    -- other lualine options
  }
}
```

### BufferLine Integration

For optimal BufferLine experience:

```lua
require("bufferline").setup {
  highlights = require("flow.groups.integrations.bufferline").get(require("flow.palettes").palette),
  -- other bufferline options
}
```

### Telescope Integration

For consistent Telescope styling:

```lua
require("telescope").setup {
  highlights = require("flow.groups.integrations.telescope").get(require("flow.palettes").palette),
  -- other telescope options
}
```
