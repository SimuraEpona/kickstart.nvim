return {
  'nvim-treesitter/nvim-treesitter',
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = { enable = true, disable = { 'ruby' } },
  },
}
