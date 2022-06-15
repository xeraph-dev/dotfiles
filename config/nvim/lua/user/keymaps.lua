local opts = { noremap = true, silent = true }

local term_opt = { silent = true }

-- Shorten function name
local map = vim.api.nvim_set_keymap

-- Remap space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode + "n"
--   insert_mode + "i"
--   visual_mode + "v"
--   visual_block_mode + "x"
--   term_mode + "t"
--   command_mode + "c"

-- Normal --
-- Better window navigation
map("n", "<C-S-Left>", "<C-w>h", opts)
map("n", "<C-S-Right>", "<C-w>l", opts)
map("n", "<C-S-Up>", "<C-w>k", opts)
map("n", "<C-S-Down>", "<C-w>j", opts)

map("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Telescope
map("n", "<leader>tf", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>tg", "<cmd>Telescope live_grep<CR>", opts)

-- Save file
map("n", "<C-s>", ":w<CR>", opts)

-- Exit
map("n", "<C-q>", ":q<CR>", opts)

-- Resize with arrows
map("n", "<C-A-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-A-Right>", ":vertical resize +2<CR>", opts)
map("n", "<C-A-Up>", ":resize -2<CR>", opts)
map("n", "<C-A-Down>", ":resize +2<CR>", opts)

-- Navigate buffers
map("n", "<S-Left>", ":bprevious<CR>", opts)
map("n", "<S-Right>", ":bnext<CR>", opts)

-- Comment
map("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)

-- Null-ls
map("n", "<C-f>", "<cmd>lua vim.lsp.buf.formatting_sync(nil, 2000)<CR>", opts)

-- Insert --
-- Press jk fast to escape
map("i", "jk", "<Esc>", opts)

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Paste replacing selection
map("v", "p", '"_dP', opts)

-- Comment
map("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>", opts)

-- Visual Block
-- Move text up and down
map("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)
map("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
