return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" }, -- or nvim-web-devicons
  opts = {
    latex = {
      enabled = true,
      converter = "latex2text", -- requires system package: 'pylatexenc'
    },
  },
}
