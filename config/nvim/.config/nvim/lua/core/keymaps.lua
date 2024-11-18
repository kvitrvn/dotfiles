-- leader key
vim.g.mapleader = ";"

local keymap = vim.keymap.set

-- Navigation entre les buffers
keymap("n", "<S-RIGHT>", ":bnext<CR>", opts)
keymap("n", "<S-LEFT>", ":bprevious<CR>", opts)
