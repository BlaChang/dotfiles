-- Set Space As Leader Key
vim.g.mapleader = ' '
vim.g.localmapleader = ' '
vim.opt.clipboard = 'unnamedplus'
local o = vim.o

o.expandtab = true 
o.smartindent = true
o.tabstop = 2 
o.shiftwidth = 2 
vim.api.nvim_win_set_option(0,'number', true)
vim.api.nvim_set_keymap('', "<Cr>", ':noh<Cr><Cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i','<M-BS>', "<Esc>bdw<Insert>", {noremap = true, silent = true})
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set("n", "<leader>sc", ":source $HOME/.config/nvim/init.lua <CR>")
