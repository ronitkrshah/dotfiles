return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local ts = require('nvim-treesitter')
    ts.install({'javascript', 'typescript','vimdoc', 'lua'})

    vim.api.nvim_create_autocmd('FileType', {
      pattern = { '<filetype>' },
      callback = function() vim.treesitter.start() end,
    })
  end
}
