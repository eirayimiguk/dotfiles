local silent = { silent = true, noremap = true }
local map = vim.api.nvim_set_keymap

-- Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Exit insert mode (jj)
map('i', 'jj', '<Esc>', silent)

-- Window movement
map('n', '<c-h>', '<c-w>h', silent)
map('n', '<c-j>', '<c-w>j', silent)
map('n', '<c-k>', '<c-w>k', silent)
map('n', '<c-l>', '<c-w>l', silent)

-- Tab movement
map('n', '<c-Left>', '<cmd>tabpre<cr>', silent)
map('n', '<c-Right>', '<cmd>tabnext<cr>', silent)

