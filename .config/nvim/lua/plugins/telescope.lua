return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    branch = '0.1.x',
    event = { "BufReadPost" },
    config = function()
        local builtin = require('telescope.builtin')
        local action_state = require('telescope.actions.state')

        -- Some Shortcuts
        vim.keymap.set('n', '<leader>ff', builtin.find_files)
        vim.keymap.set('n', '<leader>fg', builtin.live_grep)
        vim.keymap.set('n', '<leader>fh', builtin.help_tags)
        vim.keymap.set("n", "<leader>fb", function()
            builtin.buffers({
                initial_mode = "normal",
            })
        end)

        require('telescope').setup()
    end
}
