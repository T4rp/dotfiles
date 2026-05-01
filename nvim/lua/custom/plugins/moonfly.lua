return {
    "bluz71/vim-moonfly-colors",
    lazy = false,
    name = "moonfly",
    priority = 900,
    config = function()
        vim.g.moonflyTransparent = true
        vim.g.moonflyUndercurls = false
        vim.cmd.colorscheme("moonfly")
    end,
}
