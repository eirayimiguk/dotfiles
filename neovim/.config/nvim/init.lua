-- Options
local opt = vim.opt
opt.textwidth = 120
opt.scrolloff = 7
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.ignorecase = true
opt.smartcase = true
opt.number = true
opt.relativenumber = true
opt.smartindent = true
opt.laststatus = 3
opt.hidden = true
opt.undofile = true

-- Color
opt.termguicolors = true
opt.background = 'dark'

-- Keybind
local silent = { silent = true, noremap = true }
local map = vim.api.nvim_set_keymap

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

