local opts = {
  noremap = true,
  silent = true,
}

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
-- keymap("", "<Space>", "<Nop>", opts)

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- keymaps to change the vsplit size
keymap("n", "<C-1>", ":vertical resize -100<CR>", opts)
keymap("n", "<C-2>", ":vertical resize +100<CR>", opts)
keymap("n", "<C-3>", ":wincmd x<CR>", opts)

-- tabs navigation
keymap("n", "<S-j>", "", opts)
keymap("n", ",1", ":tabNext<cr>", opts)
keymap("n", ",2", ":tabprevious<cr>", opts)
keymap("n", "<C-l>", ":tabNext<cr>", opts)
keymap("n", "<C-h>", ":tabprevious<cr>", opts)
-- keymap("n", ",3", ":tabN3<cr>", opts)
-- keymap("n", ",4", ":tabN4<cr>", opts)
keymap('i', ";;" , "<Esc>:", {})
keymap('x', ";;" , "<Esc>:'<,'>:CopilotChat", {})
keymap('n', ";;" , "<Esc>:", {})
keymap('t', ";;" , "<Esc>:", {})

keymap('t', '<Esc>', [[<C-\><C-n>]], opts)

-- keymap("i", "<C-l>", "<ESC>:tabNext<cr>", opts)
-- keymap("i", "<C-h>", "<ESC>:tabprevious<cr>", opts)

-- keymap("n", ",.", "tabclose<cr>:", opts) INFO: dont work with tabs anymore
-- keymap("n", ".,", "tabclose<cr>:", opts)

keymap("n", "<S-Up>", "", opts)
keymap("n", "<S-Down>", "", opts)

keymap("i", "<S-Up>", "", opts)
keymap("i", "<S-Down>", "", opts)

keymap("v", "<S-Up>", "", opts)
keymap("v", "<S-Down>", "", opts)

keymap("n", ",z", ":BufferLinePickClose<CR>", opts)
keymap("n", ",c", ":close<cr>", opts)
keymap("n", "<BS>", "di", opts)

keymap("n", "<leader>w", ":w!<CR>", opts)
keymap("n", "<leader>q", ":wq<CR>", opts)
keymap("n", "<C-h>", "<C-w>j", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>k", opts)
keymap("n", "<M-Right>", "<C-w>l", opts)
keymap("n", "<M-Left>", "<C-w>h", opts)
keymap("n", "<M-Up>", "<C-w>k", opts)
keymap("n", "<M-Down>", "<C-w>j", opts)

keymap("n", "<C-u>", ":redo<CR>", opts)
keymap("n", "<S-u>", ":redo<CR>", opts)

-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- keymap("n", "<A-Up>", "}", opts)
-- keymap("n", "<A-Down>", "{", opts)

-- comma commands
keymap("n", ",.", ":w<CR>", opts)
keymap("i", ",.", "<Esc>:w<CR>", opts)
keymap("x", ",.", "<Esc>:w<CR>", opts)
keymap("v", ",.", "<Esc>:w<CR>", opts)
keymap("n", ".,", ":w<CR>", opts)
keymap("i", ".,", "<Esc>:w<CR>", opts)
keymap("x", ".,", "<Esc>:w<CR>", opts)
keymap("v", ".,", "<Esc>:w<CR>", opts)

keymap("n", "qq", ":q<CR>", opts)
keymap("i", "qq", "<Esc>:q<CR>", opts)
keymap("x", "qq", "<Esc>:q<CR>", opts)
keymap("v", "qq", "<Esc>:q<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)


-- Move text up and down
-- keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
-- keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
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
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

