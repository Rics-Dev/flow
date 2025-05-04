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
    
    return integrations
end

return M