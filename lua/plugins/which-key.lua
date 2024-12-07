return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  opts = {
    icons = {
      mappings = vim.g.have_nerd_font,
    },
    spec = {
      { '<leader>c', group = '[C]ode', icon = '', mode = { 'n', 'x' } },
      { '<leader>d', group = '[D]ocument', icon = '󰈙' },
      { '<leader>g', group = '[G]it', icon = '󰊢' },
      { '<leader>r', group = '[R]oR', icon = '' },
      { '<leader>s', group = '[S]earch', icon = '' },
      { '<leader>w', group = '[W]orkspace', icon = '󰯉' },
      { '<leader>t', group = '[T]oggle', icon = '' },
    },
  },
}
