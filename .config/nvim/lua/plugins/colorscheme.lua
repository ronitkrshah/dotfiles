return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            styles = {
                functions = { italic = true, bold = true },
                comments = { italic = true, bold = true },
            }
        })

        vim.cmd.colorscheme("tokyonight")
    end
}
