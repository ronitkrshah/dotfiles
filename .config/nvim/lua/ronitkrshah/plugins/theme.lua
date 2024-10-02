return {
  "tiagovla/tokyodark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyodark").setup({
      gamma = 1.4,
    })

    vim.cmd.colorscheme("tokyodark")
  end
}
