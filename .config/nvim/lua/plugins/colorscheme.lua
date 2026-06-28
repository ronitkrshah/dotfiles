return {
    "loctvl842/monokai-pro.nvim",
    priority = 1000,
    config = function()
        require("monokai-pro").setup({
            filter = "octagon",
            styles = {
                comment = { italic = false },
                keyword = { italic = false },
                type = { italic = false },
                storageclass = { italic = false },
                structure = { italic = false },
                parameter = { italic = false },
                annotation = { italic = false },
                tag_attribute = { italic = false },
            },
        })

        vim.cmd.colorscheme("monokai-pro")
    end
}
