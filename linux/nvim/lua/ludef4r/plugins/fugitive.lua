local configs = function ()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
end

return {
    'tpope/vim-fugitive',
    config = configs
}
