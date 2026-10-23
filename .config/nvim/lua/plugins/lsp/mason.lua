return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
    { "folke/lazydev.nvim", opts = {} },
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "eslint",
        "bashls",
        "stylua"
      },
    })
  end
}
