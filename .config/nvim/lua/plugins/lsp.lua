return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"mason-org/mason-lspconfig.nvim",
		"onsails/lspkind.nvim",
		{ "windwp/nvim-autopairs", opts = {} },
		{ "mason-org/mason.nvim", opts = {} },
		{
			"L3MON4D3/LuaSnip",
			dependencies = {
				"rafamadriz/friendly-snippets",
				"saadparwaiz1/cmp_luasnip",
			},
			version = "v2.*",
			build = "make install_jsregexp",
		},
		{ "j-hui/fidget.nvim", opts = {} },
	},
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")
		local luasnip = require("luasnip")
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")

		require("luasnip.loaders.from_vscode").lazy_load()

		-- Setup
		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
					vim.keymap.set({ "i", "s" }, "<C-j>", function()
						luasnip.jump(1)
					end, { silent = true })
					vim.keymap.set({ "i", "s" }, "<C-k>", function()
						luasnip.jump(-1)
					end, { silent = true })
				end,
			},
			window = {
				completion = cmp.config.window.bordered({ border = "rounded" }),
				documentation = cmp.config.window.bordered({ border = "rounded" }),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-u>"] = cmp.mapping.scroll_docs(-4),
				["<C-d>"] = cmp.mapping.scroll_docs(4),
				["<C-p>"] = cmp.mapping.select_prev_item(),
				["<C-n>"] = cmp.mapping.select_next_item(),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp", group_index = 1 },
				{ name = "path", group_index = 1 },
				{ name = "luasnip", group_index = 1 },
				{ name = "buffer", group_index = 2 },
			}),
			formatting = {
				fields = { "icon", "abbr", "kind" },
				format = lspkind.cmp_format({
					ellipsis_char = "...",
				}),
			},
		})
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

		-- LSP Setup
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local servers = require("mason-lspconfig").get_installed_servers()

		for i = 1, #servers do
			vim.lsp.config(servers[i], {
				capabilities = capabilities,
			})
			vim.lsp.enable(servers[i])
		end

		-- Diagnostics
		local config = {
			update_in_insert = true,
			underline = true,
			severity_sort = true,
			float = {
				focusable = false,
				style = "minimal",
				border = "single",
				source = "always",
				header = "",
				prefix = "",
				suffix = "",
			},
		}
		vim.diagnostic.config(config)

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
				vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
				vim.keymap.set({ "n", "v" }, "<F3>", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
				vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
				vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
			end,
		})
		-- show borders on hover
		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
			border = "single",
			title = " Information ",
		})

		-- Show diagnostics as popup
		local function lsp_diagnostics_popup_handler()
			local current_cursor = vim.api.nvim_win_get_cursor(0)
			local last_popup_cursor = vim.w.lsp_diagnostics_last_cursor or { nil, nil }

			-- Only show once per cursor position
			if not (current_cursor[1] == last_popup_cursor[1] and current_cursor[2] == last_popup_cursor[2]) then
				vim.w.lsp_diagnostics_last_cursor = current_cursor

				vim.diagnostic.open_float(nil, {
					scope = "cursor",
					title = " Diagnostics ",
					border = "single",
					focusable = false, -- prevents stealing focus
				})
			end
		end

		-- Create augroup
		local group = vim.api.nvim_create_augroup("LSPDiagnosticsOnHover", { clear = true })

		-- Create autocmd
		vim.api.nvim_create_autocmd("CursorHold", {
			group = group,
			callback = lsp_diagnostics_popup_handler,
		})
	end,
}
