return
{
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "lua_ls", "rust_analyzer", "pyright", "vimls","svelte", "clangd"},
  },
  enabled = true,
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    {"neovim/nvim-lspconfig" }
  }
}
