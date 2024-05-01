local configs = function()
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
end

return {
    'mbbill/undotree',
    config = configs
}
