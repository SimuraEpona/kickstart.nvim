-- [[ Colorscheme ]]
-- Dark-only theme; `colors.apply()` forces `background = 'dark'` and pulls in the
-- treesitter / snacks / todo-comments / noice / neo-tree highlight groups itself.
vim.pack.add { 'https://github.com/tahayvr/matteblack.nvim' }

vim.cmd.colorscheme 'matteblack'
