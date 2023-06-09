local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
-- keymap("", "<Space>", "<Nop>", opts)
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<C-j>", ":bnext<CR>", opts)
keymap("n", "<C-k>", ":bprevious<CR>", opts)

-- Swap colon and semicolon
keymap("n", ";", ":", opts)
keymap("n", ":", ";", opts)

-- add blank line above or below and return to normal mode
keymap("n", "zj", "o<ESC>", opts)
keymap("n", "zk", "O<ESC>", opts)

-- find git conflict markers
keymap("n", "<leader>C", "/^\\(<\\|=\\|>\\)\\{7\\}\\([^=].\\+\\)\\?$<CR>", opts)

-- <<<<<<< head
-- =======
-- >>>>>>> uuid

-- Auto center on matched string
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

keymap("n", "<Left>", ":NvimTreeToggle<CR>", opts)

-- Insert --
-- Press jj fast to enter
keymap("i", "jj", "<ESC>", opts)
keymap("i", "JJ", "<ESC>", opts)

keymap("i", "''", "''<Left>", opts)
keymap("i", "\"\"", "\"\"<Left>", opts)
keymap("i", "<>", "<Left>", opts)
keymap("i", "//", "//<Left>", opts)
keymap("i", "[]", "[]<Left>", opts)
keymap("i", "()", "()<Left>", opts)
keymap("i", "%%", "%%<Left>", opts)
keymap("i", "``", "``<Left>", opts)
keymap("i", "{}", "{  }<Left><Left>", opts)
-- keymap("i", "", "<Left>", opts)

keymap("i", ";w", "<ESC>:w", opts)


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Command --
keymap("c", "''", "''<Left>", opts)
keymap("c", "\"\"", "\"\"<Left>", opts)
keymap("c", "<>", "<><Left>", opts)
keymap("c", "//", "//<Left>", opts)
keymap("c", "[]", "[]<Left>", opts)
keymap("c", "()", "()<Left>", opts)
keymap("c", "{}", "{}<Left>", opts)

