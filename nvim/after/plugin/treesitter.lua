require('nvim-treesitter.configs').setup {
    rainbow = {
        enable = false,
    },

  ensure_installed = { "c", "lua", "javascript", "typescript", "markdown" },
  auto_install = true,
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {enable = true},
}
