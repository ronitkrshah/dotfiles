return {
	{
		"monkoose/neocodeium",
		dependencies = { "hrsh7th/cmp-nvim-lsp" },
		event = "VeryLazy",
		config = function()
			local neocodeium = require("neocodeium")
			neocodeium.setup()

			vim.keymap.set("i", "<A-a>", neocodeium.accept)
			vim.keymap.set("i", "<A-w>", neocodeium.accept_word)
			vim.keymap.set("i", "<A-.>", neocodeium.cycle_or_complete)
			vim.keymap.set("i", "<A-,>", function()
				neocodeium.cycle_or_complete(-1)
			end)
			vim.keymap.set("i", "<A-c>", neocodeium.clear)
		end,
	},
	{
		"nickjvandyke/opencode.nvim",
		dependencies = { "rcarriga/nvim-notify" },
		version = "*",
		config = function()
			vim.keymap.set({ "n" }, "<A-o>", function()
				require("opencode").ask("@buffer: ", { submit = true })
			end, { desc = "Ask opencode…" })
			vim.keymap.set({ "x" }, "<A-o>", function()
				require("opencode").ask("@this: ", { submit = true })
			end, { desc = "Ask opencode…" })
			vim.keymap.set({ "n" }, "<A-p>", function()
				require("opencode").prompt("")
			end, { desc = "Prompt" })

			-- Handle `opencode` events
			vim.api.nvim_create_autocmd("User", {
				pattern = "OpencodeEvent:*",
				callback = function(args)
					local event = args.data.event

					if event.type == "session.idle" then
						require("notify")("Opencode Finished Responding", nil, {
							title = "Opencode",
							icon = "󰚩",
							animate = true,
						})
					end
				end,
			})
		end,
	},
}
