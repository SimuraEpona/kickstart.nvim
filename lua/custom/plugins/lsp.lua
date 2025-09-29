return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },
    'mason-org/mason-lspconfig.nvim',
    {
      'saghen/blink.cmp',
      opts = {
        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
          per_filetype = {
            sql = { 'snippets', 'dadbod', 'buffer' },
          },
          -- add vim-dadbod-completion to your completion providers
          providers = {
            dadbod = { name = 'Dadbod', module = 'vim_dadbod_completion.blink' },
          },
        },
      },
    },
  },
  config = function()
    vim.diagnostic.config {
      virtual_lines = true,
    }

    require('mason-lspconfig').setup()
  end,
}
