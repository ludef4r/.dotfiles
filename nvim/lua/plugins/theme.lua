return {
    "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style="night",
            transparent=true,
            styles={
                comments={italic=false},
                keywords={italic=false},
            },
        },
        config = function()
            vim.cmd.colorscheme("tokyonight")

            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
}
