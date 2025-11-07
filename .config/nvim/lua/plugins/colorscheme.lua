return {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = false,
    config = function()
        require("kanagawa").setup({
            commentStyle = { italic = true },
            functionStyle = {bold = true, italic = true },
            keywordStyle = { italic = true},
            statementStyle = { bold = true },
            typeStyle = { italic = true},
        })
        vim.cmd.colorscheme("kanagawa")
    end
}
