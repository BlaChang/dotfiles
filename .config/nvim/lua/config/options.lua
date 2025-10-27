vim.opt.relativenumber = true

vim.opt.clipboard = 'unnamedplus'
local o = vim.o

o.expandtab = true 
o.smartindent = true
o.tabstop = 2 
o.shiftwidth = 2 
vim.g.python3_host_prog = '/usr/bin/python3'
vim.g.UltiSnipsSnippetDirectories = {'UltiSnips'}
vim.g.UltiSnipsExpandTrigger       = '<Tab>'
vim.g.UltiSnipsJumpForwardTrigger  = '<Tab>'
vim.g.UltiSnipsJumpBackwardTrigger = '<S-Tab>'

