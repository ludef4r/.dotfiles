vim.g.mapleader = " "

-- Move with indentation correct
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Function to keymap in normal mode
local map = function(keys, func, des)
    vim.keymap.set("n", keys, func, { desc = des})
end

map("<leader>pv", vim.cmd.Ex, "Go to netrw")

map("<Esc>", "<cmd>nohlsearch<CR>", "No search highlight")

-- Search stays in the middle
map("n", "nzzzv", "Search stays in the middle")
map("N", "Nzzzv", "Search stays in the middle")

-- Disable keys
map("<left>", '<cmd>echo "Cringe"<CR>', "It's just cringe")
map("<right>", '<cmd>echo "Vim is the best"<CR>', "It just is")
map("<up>", '<cmd>echo "Good luck"<CR>', "You'll need it")
map("<down>", '<cmd>echo "xD"<CR>', "It's just funny")

map('<C-h>', '<C-w><C-h>', 'Move focus to the left window')
map('<C-l>', '<C-w><C-l>', 'Move focus to the right window')
map('<C-j>', '<C-w><C-j>', 'Move focus to the lower window')
map('<C-k>', '<C-w><C-k>', 'Move focus to the upper window')
