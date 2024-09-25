return {
  "L3MON4D3/LuaSnip",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  build = "make install_jsregexp",
  config = function()
    local luasnip = require("luasnip")
    require("luasnip.loaders.from_vscode").lazy_load()
    vim.keymap.set({ "i", "s" }, "<C-j>", function() luasnip.jump(1) end, { silent = true })
    vim.keymap.set({ "i", "s" }, "<C-k>", function() luasnip.jump(-1) end, { silent = true })
  end
}
