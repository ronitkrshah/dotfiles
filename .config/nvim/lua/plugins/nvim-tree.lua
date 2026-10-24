return {
	"antosha417/nvim-lsp-file-operations",
	dependencies = {
		{
			"nvim-tree/nvim-tree.lua",
			dependencies = {
				"nvim-tree/nvim-web-devicons",
				"stevearc/dressing.nvim",
			},
		},
	},
	config = function()
		require("nvim-tree").setup({
			hijack_cursor = true,
			disable_netrw = true,
			renderer = {
				indent_width = 4,
			},
			diagnostics = {
				enable = true,
				show_on_dirs = true,
				icons = {
					hint = "󰛨",
					info = "",
					warning = "",
					error = "",
				},
			},
			select_prompts = true,
			notify = {
				threshold = vim.log.levels.ERROR,
			},
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
			view = {
				adaptive_size = true,
				-- side = 'right'
			},
		})

		-- Keymap
		vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>")

		require("lsp-file-operations").setup({
			auto_save = true,
		})
	end,
}
