return {
    'neoclide/coc.nvim',
    branch = 'release',
    config = function()
        local keyset = vim.keymap.set

        vim.g.coc_global_extensions = {
            "coc-pairs",
            "coc-json",
            "coc-prettier",
            "coc-snippets",
            "coc-tsserver",
            "@tcx4c70/coc-csharp",
            "coc-lua"
        }

        -- Use <c-j> to trigger snippets
        keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
        -- Use <c-space> to trigger completion
        keyset("i", "<c-space>", "coc#refresh()", { silent = true, expr = true })

        -- Symbol renaming
        keyset("n", "<F2>", "<Plug>(coc-rename)", { silent = true })


        -- Remap keys for apply source code actions for current file.
        local opts = { silent = true, nowait = true }
        keyset("x", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)
        keyset("n", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)
        keyset("n", "<leader>as", "<Plug>(coc-codeaction-source)", opts)


        -- Use `[g` and `]g` to navigate diagnostics
        -- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
        keyset("n", "[d", "<Plug>(coc-diagnostic-prev)", { silent = true })
        keyset("n", "]d", "<Plug>(coc-diagnostic-next)", { silent = true })

        -- GoTo code navigation
        keyset("n", "gd", "<Plug>(coc-definition)", { silent = true })
        keyset("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
        keyset("n", "gi", "<Plug>(coc-implementation)", { silent = true })
        keyset("n", "gr", "<Plug>(coc-references)", { silent = true })


        -- Use K to show documentation in preview window
        function _G.show_docs()
            local cw = vim.fn.expand('<cword>')
            if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
                vim.api.nvim_command('h ' .. cw)
            elseif vim.api.nvim_eval('coc#rpc#ready()') then
                vim.fn.CocActionAsync('doHover')
            else
                vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
            end
        end

        keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', { silent = true })
    end
}
