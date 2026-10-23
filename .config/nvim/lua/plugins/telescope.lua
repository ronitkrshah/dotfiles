return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  lazy = false,
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set("n", "<leader>ff", builtin.find_files)
		vim.keymap.set("n", "<leader>fg", builtin.live_grep)
		vim.keymap.set("n", "<leader>fi", builtin.current_buffer_fuzzy_find)
		vim.keymap.set("n", "<leader>fb", function()
			builtin.buffers({
				initial_mode = "normal",
			})
		end)
		vim.keymap.set("n", "<leader>fd", function()
			builtin.diagnostics({
				bufnr = 0
			})
    end)
  end
}
