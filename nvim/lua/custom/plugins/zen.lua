return {
    "folke/zen-mode.nvim",
    config = function()
        local zenmode = require("zen-mode")
        zenmode.setup({
            plugins = {
                tmux = { enabled = true },
            },
        })

        vim.keymap.set("n", "<leader>tz", zenmode.toggle, { desc = "[T]oggle [Z]en Mode" })
    end,
}
