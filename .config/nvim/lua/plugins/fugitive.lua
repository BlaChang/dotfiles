return {
  'tpope/vim-fugitive',
  enabled = true,
  keys = {
    {"<Leader>gg", "<cmd>G<CR>", desc = "Open Git Status buffer"},
    {"<Leader>ga", "<cmd>Gwrite<CR>", desc = "Git add current file"},
    {"<Leader>gr", "<cmd>Gread<CR>", desc = "Git reset current file"},
    {"<Leader>gb", "<cmd>G blame<CR>", desc = "Git Blame"},
    {"<Leader>gl", "<cmd>G log<CR>", desc = "Git log"},
    {"<Leader>gc", "<cmd>G commit<CR>", desc = "Git commit"},
  }
}
