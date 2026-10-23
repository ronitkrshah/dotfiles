return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets', 
    {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
    }
  },
  version = '1.*',
  opts = {
    completion = { documentation = { auto_show = true } },
  }
}
