local M = {}

function M.get(palette, options)
    local integrations = {}
    
    -- Load integrations based on options
    if options.integrations.nvimtree then
        integrations = vim.tbl_deep_extend("force", integrations, require("flow.groups.integrations.nvimtree").get(palette))
    end
    
    if options.integrations.telescope then
        integrations = vim.tbl_deep_extend("force", integrations, require("flow.groups.integrations.telescope").get(palette))
    end
    
    if options.integrations.treesitter then
        integrations = vim.tbl_deep_extend("force", integrations, require("flow.groups.integrations.treesitter").get(palette))
    end
    
    if options.integrations.gitsigns then
        integrations = vim.tbl_deep_extend("force", integrations, require("flow.groups.integrations.gitsigns").get(palette))
    end
    
    if options.integrations.indent_blankline then
        integrations = vim.tbl_deep_extend("force", integrations, require("flow.groups.integrations.indent_blankline").get(palette))
    end
    
    if options.integrations.native_lsp then
        integrations = vim.tbl_deep_extend("force", integrations, require("flow.groups.integrations.native_lsp").get(palette))
    end
    
    if options.integrations.nvim_dap then
        integrations = vim.tbl_deep_extend("force", integrations, require("flow.groups.integrations.nvim_dap").get(palette))
    end
    
    if options.integrations.lsp_trouble then
        integrations = vim.tbl_deep_extend("force", integrations, require("flow.groups.integrations.lsp_trouble").get(palette))
    end
    
    if options.integrations.which_key then
        integrations = vim.tbl_deep_extend("force", integrations, require("flow.groups.integrations.which_key").get(palette))
    end
    
    if options.integrations.bufferline then
        integrations = vim.tbl_deep_extend("force", integrations, require("flow.groups.integrations.bufferline").get(palette))
    end
    
    if options.integrations.notify then
        integrations = vim.tbl_deep_extend("force", integrations, require("flow.groups.integrations.notify").get(palette))
    end
    
    return integrations
end

return M
