local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
--keymap("", "<Space>", "<Nop>", opts)
--vim.g.mapleader = " "
--vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- Navigate buffers
keymap("n", "<S-h>", ":bnext<CR>", opts)
keymap("n", "<S-l>", ":bprevious<CR>", opts)
keymap("n", "<S-d>", ":NvimTreeClose<CR>:bd<CR>:bprevious<CR>", opts)

--Yank
keymap("n","y","yl",opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)

--NVimTree Kepmaps
keymap("n","<C-n>",":NvimTreeToggle<CR>",opts)

-- Clear Highlighting
keymap("n","<leader>/",":noh<CR>",term_opts)



