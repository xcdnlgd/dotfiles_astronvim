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
keymap("n", "<M-k>", "<cmd>m .-2<CR>==", opts)
keymap("n", "<M-j>", "<cmd>m .+1<CR>==", opts)

-- duplicate line up and down
keymap("n", "<M-K>", "<cmd>t.<CR>k", opts)
keymap("n", "<M-J>", "<cmd>t.<CR>", opts)

keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

keymap('i', '<C-Del>', "<C-o>dw", opts)
keymap('i', '<C-BS>', '<C-w>', {remap = true, silent = true}) -- only work in gui app
keymap('i', '<C-h>', '<C-w>', {remap = true, silent = true}) -- to map <C-BS> <C-w> in windows terminal
