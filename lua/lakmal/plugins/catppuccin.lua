return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        local catppuccin = require("catppuccin")

        catppuccin.setup({
            flavour = "mocha",
            transparent_background = true,
            integrations = {
                cmp = true,
                nvimtree = true,
                treesitter = true,
                mason = true,
                telescope = {
                    enabled = true
                }
            },
        })
        vim.cmd([[colorscheme catppuccin-mocha]])
    end
}
