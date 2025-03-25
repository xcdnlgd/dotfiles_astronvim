local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("v", "p", "P", opts)
-- don't change the clipboard
keymap("v", "d", '"_d', opts)
keymap("v", "D", '"_D', opts)
-- keymap("v", 's', '"_s', opts)
keymap("v", "c", '"_c', opts)
keymap("v", "C", '"_C', opts)
keymap("n", "d", '"_d', opts)
keymap("n", "D", '"_D', opts)
keymap("n", "x", '"_x', opts)
keymap("n", "X", '"_X', opts)
-- keymap("n", 's', '"_s', opts)
-- keymap("n", 'S', '"_S', opts)
keymap("n", "c", '"_c', opts)
keymap("n", "C", '"_C', opts)

-- move line up and down
keymap("n", "<M-k>", ":m -2<cr>==", opts) -- == is for auto indent
keymap("n", "<M-j>", ":m +1<cr>==", opts)
keymap("i", "<M-k>", "<esc>:m -2<cr>==gi", opts)
keymap("i", "<M-j>", "<esc>:m +1<cr>==gi", opts)
keymap("v", "<M-k>", ":m '<-2<cr><esc>gv=gv", opts) -- <esc> to get rid of n lines moved hint
keymap("v", "<M-j>", ":m '>+1<cr><esc>gv=gv", opts)

-- duplicate line up and down
keymap("n", "<M-K>", "<cmd>t.<cr>k", opts)
keymap("n", "<M-J>", "<cmd>t.<cr>", opts)
keymap("i", "<M-K>", "<esc>:t .<cr>gi", opts)
keymap("i", "<M-J>", "<esc>:t -1<cr>gi", opts)
keymap("v", "<M-K>", ":t '><cr>gv", opts)
keymap("v", "<M-J>", ":t -1<cr>gv", opts)

keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

keymap('i', '<C-Del>', "<C-o>dw", opts)
keymap('i', '<C-BS>', '<C-w>', {remap = true, silent = true}) -- only work in gui app
keymap('i', '<C-h>', '<C-w>', {remap = true, silent = true}) -- to map <C-BS> <C-w> in windows terminal
