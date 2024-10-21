return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "frappe",
      background = {
        light = "latte",
        dark = "frappe",
      },
      styles = {
        comments = { "bold", "italic" },
        conditionals = { "bold", "italic" },
        functions = { "bold", "italic" },
        booleans = { "bold", "italic" },
        types = { "bold", "italic" },
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end
}
