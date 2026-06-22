-- [[ LSP ]] mason installs servers; mason-lspconfig auto-enables installed ones.
vim.pack.add {
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/mason-org/mason-lspconfig.nvim',
  'https://github.com/neovim/nvim-lspconfig',
}

vim.diagnostic.config {
  virtual_lines = true,
}

require('mason').setup {}
-- With automatic_enable (default), every server installed via :Mason is enabled
-- through vim.lsp.enable. blink.cmp extends LSP capabilities internally.
require('mason-lspconfig').setup {}
