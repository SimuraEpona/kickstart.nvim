-- MDX support (depends on nvim-treesitter; loaded after it in custom.plugins).
-- No setup() required; the plugin registers itself on load and relies on the
-- markdown/tsx/typescript parsers (auto-installed by the treesitter FileType autocmd).
vim.pack.add { 'https://github.com/davidmh/mdx.nvim' }
