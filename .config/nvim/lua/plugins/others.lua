return {
    -- Theme
    {
        'AstroNvim/astrotheme',
        config = function()
            require("astrotheme").setup({})
            vim.cmd('colorscheme astrotheme')
        end
    },

    -- Sourround
    {
        'kylechui/nvim-surround',
        version = '*',
        opts = {}
    },

    -- Git
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            current_line_blame = true,
            current_line_blame_opts = {
                delay = 100,
            }
        }
    },

    -- Vim UI
    {
        "stevearc/dressing.nvim",
        opts = { title_pos = "left" }
    },

    -- Floating Terminal
    {
        'numToStr/FTerm.nvim',
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

    -- Delete active buffer
    {
        'famiu/bufdelete.nvim',
        config = function()
            local buffer = require('bufdelete');
            local keymap = vim.keymap;

            keymap.set("n", "<A-x>", function()
                buffer.bufdelete(0, false)
            end)
        end
    },

    -- Status Line
    {
        'akinsho/bufferline.nvim',
        config = function()
            require('bufferline').setup({
                options = {
                    diagnostics_update_in_insert = true
                }
            })

            vim.keymap.set('n', '<A-,>', ':BufferLineCyclePrev<CR>')
            vim.keymap.set('n', '<A-.>', ':BufferLineCycleNext<CR>')
        end
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
    }
}
