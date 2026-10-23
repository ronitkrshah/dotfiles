local keymap = vim.keymap

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspAttach", {}),
  callback = function(ev)
    local opts = { buffer = ev.buf, silent = true }

    keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)
    keymap.set("n", "gI", "<cmd>Telescope lsp_implementations<CR>", opts)
    keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
    keymap.set("n", "<leader>dd", "<cmd>Telescope diagnostics<CR>", opts)
    keymap.set("n", "<leader>di", vim.diagnostic.open_float, opts)
    keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
    keymap.set("n", "K", vim.lsp.buf.hover, opts)
    keymap.set({ "n", "v" }, "<F3>", vim.lsp.buf.code_action, opts)

    keymap.set("n", "<leader>]", function()
      vim.diagnostic.jump({ count = 1, float = true })
    end, opts)
    keymap.set("n", "<leader>[", function()
      vim.diagnostic.jump({ count = -1, float = true })
    end, opts)
  end
})
