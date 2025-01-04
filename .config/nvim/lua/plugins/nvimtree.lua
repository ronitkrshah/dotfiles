return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    lazy = false,
    config = function()
        require('nvim-tree').setup({
            hijack_cursor = true,
            disable_netrw = true,
            diagnostics = {
                enable = true,
                show_on_dirs = true,
                icons = {
                    hint = 'H',
                    info = 'I',
                    warning = 'W',
                    error = 'E'
                }
            },
            select_prompts = true,
            notify = {
                threshold = vim.log.levels.ERROR,
            },
            actions = {
                open_file = {
                    quit_on_open = true
                }
            }
        })

        -- Keymap
        vim.keymap.set('n', '<leader>ee', ':NvimTreeToggle<CR>')
    end
}
