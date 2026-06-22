-- [[ Colorscheme ]]
vim.pack.add { 'https://github.com/folke/tokyonight.nvim' }

---@diagnostic disable-next-line: missing-fields
require('tokyonight').setup {
  styles = {
    comments = { italic = false }, -- Disable italics in comments
  },
}

-- Default colorscheme; auto-dark-mode may switch the variant based on the OS theme.
vim.cmd.colorscheme 'tokyonight-night'
