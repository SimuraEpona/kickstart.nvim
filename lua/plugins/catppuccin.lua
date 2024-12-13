return {
  'catppuccin/nvim',
  priority = 1000,
  lazy = false,
  init = function()
    vim.cmd.colorscheme 'catppuccin'
    vim.cmd.hi 'Comment gui=none'
  end,
}
