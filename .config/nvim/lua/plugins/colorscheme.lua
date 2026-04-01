return {
	"webhooked/kanso.nvim",
	priority = 1000,
	config = function()
		require("kanso").setup({
			background = { -- map the value of 'background' option to a theme
				dark = "ink", -- try "zen", "mist" or "pearl" !
				light = "pearl", -- try "zen", "mist" or "ink" !
			},
		})
		vim.cmd("colorscheme kanso")
	end,
}
