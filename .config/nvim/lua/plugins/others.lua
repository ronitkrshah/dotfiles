return {
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = "v2.*",
        build = "make install_jsregexp",
        config = function()
            local luasnip = require("luasnip")
            require("luasnip.loaders.from_vscode").lazy_load()

            vim.keymap.set({ "i", "s" }, "<C-j>", function() luasnip.jump(1) end, { silent = true })
            vim.keymap.set({ "i", "s" }, "<C-k>", function() luasnip.jump(-1) end, { silent = true })
        end
    },
    -- Floating Terminal
    {
        'numToStr/FTerm.nvim',
        keys = { '<A-i>' },
        config = function()
            require('FTerm').setup({
                -- Double Border
                border = { "╔", "═", "╗", "║", "╝", "═", "╚", "║" },
            })

            -- Custom Keymap
            vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
            vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
        end
    },

    -- Git Module
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPost" },
        config = function()
            require('gitsigns').setup()
        end
    },

    -- Custom Prompt UI
    {
        "stevearc/dressing.nvim",
        event = "VeryLazy",
        config = function()
            require("dressing").setup({
                title_pos = "left",
            })
        end
    },
}
