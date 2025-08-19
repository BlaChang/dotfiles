return{
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local nvimtree = require("nvim-tree")
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    nvimtree.setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      }
    })
    local keymap = vim.keymap
    keymap.set('n', '<leader>ee', '<Cmd>NvimTreeToggle<CR>')
    keymap.set('n', '<leader>ec', '<Cmd>NvimTreeCollapse<Cr>')
    keymap.set('n', '<leader>ef', '<Cmd>NvimTreeFindFileToggle<Cr>')
    keymap.set('n', '<leader>er', '<Cmd>NvimTreeRefresh<Cr>')
  end
}
