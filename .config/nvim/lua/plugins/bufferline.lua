return {
    'akinsho/bufferline.nvim',
    event = 'UiEnter',
    config = function()
        require('bufferline').setup({
            options = {
                diagnostics_update_in_insert = true
            }
        })

        vim.keymap.set('n', '<A-,>', ':BufferLineCyclePrev<CR>')
        vim.keymap.set('n', '<A-.>', ':BufferLineCycleNext<CR>')
    end
}
