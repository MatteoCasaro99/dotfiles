local options = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap


-- space as leader key (first line unmaps space, the others map it to leader)
keymap("", "<Space>", "<Nop>", options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
