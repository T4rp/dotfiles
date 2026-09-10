local THEMES = {
    catppuccin = {
        "catppuccin/nvim",
        lazy = false,
        priority = 1000,
        name = "catppuccin",
        config = function()
            vim.cmd.colorscheme("catppuccin-mocha")
        end,
    },
    moonfly = {
        "bluz71/vim-moonfly-colors",
        lazy = false,
        name = "moonfly",
        priority = 1000,
        config = function()
            -- vim.g.moonflyTransparent = true
            vim.g.moonflyUndercurls = false
            vim.cmd.colorscheme("moonfly")
        end,
    },
    tokyonight = {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                styles = {
                    comments = { italic = false },
                },
            })
            vim.cmd.colorscheme("tokyonight-night")
        end,
    },
}

return THEMES["moonfly"]
