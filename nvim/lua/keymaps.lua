local options = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap


-- space as leader key (first line unmaps space, the others map it to leader)
keymap("", "<Space>", "<Nop>", options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [count]<leader>o/O : put [count] blank line[s] after/before current one, without moving cursor.
keymap("n", "<leader>o", ":<C-u>put =repeat(nr2char(10),v:count)<Bar>execute \"'[-1\"<CR>", options)
keymap("n", "<leader>O", ":<C-u>put!=repeat(nr2char(10),v:count)<Bar>execute \"']+1\"<CR>", options)


-- <leader>pv : opens netrw (:Ex)
keymap("n", "<leader>pv", ":Explore<CR>", options)


-- maintain page centered when scrolling via C-d or C-u
keymap("n", "<C-d>", "<C-d>zz", options)
keymap("n", "<C-u>", "<C-u>zz", options)
