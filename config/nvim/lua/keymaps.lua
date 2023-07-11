local options = { noremap = true, silent = true }
local keymap = vim.keymap.set


-- space as leader key (first line unmaps space, the others map it to leader)
keymap("", "<Space>", "<Nop>", options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [count]<leader>o/O : put [count] blank line[s] after/before current one, without moving cursor.
keymap("n", "<leader>o", ":<C-u>put =repeat(nr2char(10),v:count)<Bar>execute \"'[-1\"<CR>", options)
keymap("n", "<leader>O", ":<C-u>put!=repeat(nr2char(10),v:count)<Bar>execute \"']+1\"<CR>", options)


-- <leader>pv : opens netrw (:Ex)
keymap("n", "<leader>pv", ":Lexplore<CR>", options)


-- maintain page centered when scrolling via C-d or C-u
keymap("n", "<C-d>", "<C-d>zz", options)
keymap("n", "<C-u>", "<C-u>zz", options)


-- open and close splits with <leader>w[v/h/q]
keymap("n", "<leader>wv", ":vnew<CR>", options)
keymap("n", "<leader>wh", ":new<CR>", options)
keymap("n", "<leader>wq", "<C-w>q", options)

-- move around windows with Alt-h/j/k/l
keymap("n", "<A-h>", "<C-w>h", options)
keymap("n", "<A-j>", "<C-w>j", options)
keymap("n", "<A-k>", "<C-w>k", options)
keymap("n", "<A-l>", "<C-w>l", options)
