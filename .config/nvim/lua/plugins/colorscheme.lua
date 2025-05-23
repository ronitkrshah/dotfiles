return {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    lazy = false,
    config = function()
        require("onedarkpro").setup({
            styles = {
                tags = "italic",
                methods = "bold",
                functions = "bold,italic",
                keywords = "italic",
                comments = "italic",
                parameters = "italic",
                conditionals = "italic",
                virtual_text = "italic",
            },
            colors = {
                yellow = "#D8B449"
            }
        })

        vim.cmd("colorscheme vaporwave")
    end
}
