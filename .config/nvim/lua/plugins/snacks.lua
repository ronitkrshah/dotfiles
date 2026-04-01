return {
	"folke/snacks.nvim",
	opts = {
		animate = { enabled = true },
		git = { enabled = true }, -- Git Blame
		bufdelete = { enabled = true },
		lazygit = { enabled = true },
		input = { enabled = true },
	},
	keys = {
		{
			"<A-x>",
			function()
				Snacks.bufdelete()
			end,
			desc = "Delete Current Buffer",
		},
		{
			"<leader>gg",
			function()
				Snacks.lazygit()
			end,
			desc = "Lazy git",
		},
	},
}
