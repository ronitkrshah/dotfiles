return {
    'famiu/bufdelete.nvim',
    lazy = false,
    config = function()
        local buffer = require('bufdelete');
        local keymap = vim.keymap;

        keymap.set("n", "<A-x>", function()
            buffer.bufdelete(0, false)
        end)
    end
}
