vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.api.nvim_set_keymap
local silent = { silent = true, noremap = true }

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

-- Telescope.nvim
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', silent)
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', silent)
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', silent)
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', silent)
