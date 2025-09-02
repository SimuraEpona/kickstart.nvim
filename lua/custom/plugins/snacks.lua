return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    input = {
      enabled = true,
    },
    notifier = {
      enabled = true,
    },
    picker = {
      enabled = true,
      ui_select = true,
    },
    lazygit = {
      enabled = true,
    },
  },
  keys = {
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
  },
}
