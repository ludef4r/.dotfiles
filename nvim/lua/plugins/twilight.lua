local configs = function()
    vim.keymap.set("n", "<leader>tw", vim.cmd.Twilight)

    require("twilight").setup {
        dimming = {
            alpha = 0.25,
            color = { "Normal", "#ffffff" },
            inactive = false
        },
        context = 15,
        treesitter = true,
        expand = { "function", "method", "table", "if_statement" }
    }
end

return {
    'folke/twilight.nvim',
    config = configs
}
