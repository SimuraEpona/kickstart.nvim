return {
  'railsway.nvim',
  dir = '~/Developer/plugins/railsway.nvim',
  config = function()
    require('railsway').setup()
  end,
  dependencies = {
    'folke/snacks.nvim',
  },
}
