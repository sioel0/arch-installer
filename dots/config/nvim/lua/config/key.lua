local opts = { noremap = true, silent = true }

-- shorten keymap function name
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

--
-- NORMAL MODE
--
-- open a file explorer on the left
keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- insert new lines
keymap("n", "oo", "o<Esc>k", opts)
keymap("n", "OO", "O<Esc>j", opts)

-- resize windows
keymap("n", "<C-j>", ":resize -2<CR>", opts)
keymap("n", "<C-k>", ":resize +2<CR>", opts)
keymap("n", "<C-h>", ":vertical -2<CR>", opts)
keymap("n", "<C-l>", ":vertical +2<CR>", opts)

-- disable arrow keys
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)

-- 
-- INSERT MODE
--
-- keymap("i", "jk", "<ESC>", opts)
-- disable esc and arrow keys
keymap("i", "<Esc>", "<Nop>", opts)
keymap("i", "<Left>", "<Nop>", opts)
keymap("i", "<Right>", "<Nop>", opts)
keymap("i", "<Up>", "<Nop>", opts)
keymap("i", "<Down>", "<Nop>", opts)

-- 
-- VISUAL MODE
--
keymap("v", "jk", "<ESC>", opts)

-- don't exit visual while reindenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
