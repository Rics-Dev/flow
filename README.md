# Flow Colorscheme for Neovim

A dark, elegant colorscheme for Neovim inspired by modern UI design principles.

## Features

-   Clean, modern dark theme with carefully selected colors
-   Syntax highlighting optimized for readability
-   Support for popular plugins:
    -   NvimTree
    -   Telescope
    -   Treesitter
    -   GitSigns
    -   Lualine

## Installation

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

## Configuration

You can customize the colorscheme by passing options to the setup function:

```lua
require('flow').setup({
  transparent_background = false, -- Set to true for transparent background
  term_colors = true,            -- Set terminal colors
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
})
```

## Lualine Integration

To use Flow with Lualine:

```lua
require('lualine').setup {
  options = {
    theme = 'flow',
    -- other lualine options
  }
}
```

## Credits

Created by Ric's Dev, based on the Flow theme for Helix and Zed editors.
