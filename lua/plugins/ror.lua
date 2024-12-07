return {
  'SimuraEpona/ror.nvim',
  ft = { 'ruby', 'eruby' },
  config = function()
    require('ror').setup()
  end,
  keys = {
    { '<leader>r', "<cmd>lua require('ror.commands').list_commands()<cr>", desc = 'Ruby on Rails' },
  },
}
