return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },
	event = "VeryLazy",
	config = function()
		local opt = vim.o

		-- Folding
		opt.foldcolumn = "1" -- '0' is not bad
		opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
		opt.foldlevelstart = 99
		opt.foldenable = true

		vim.keymap.set("n", "zR", require("ufo").openAllFolds)
		vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
		require("ufo").setup()
	end,
}
