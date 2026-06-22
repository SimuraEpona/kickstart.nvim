-- File explorer that edits the filesystem like a buffer.
vim.pack.add { 'https://github.com/stevearc/oil.nvim' }

require('oil').setup()

-- Open parent directory in current window
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- Open parent directory in floating window
vim.keymap.set('n', '<space>-', require('oil').toggle_float)
