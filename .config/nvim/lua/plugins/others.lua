return {
	{
		"kylechui/nvim-surround",
		version = "*",
		opts = {},
	},

	-- Status Line
	{
		"akinsho/bufferline.nvim",
		config = function()
			require("bufferline").setup({
				options = {
					diagnostics_update_in_insert = true,
				},
			})

			vim.keymap.set("n", "<A-,>", ":BufferLineCyclePrev<CR>")
			vim.keymap.set("n", "<A-.>", ":BufferLineCycleNext<CR>")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
}
