-- [[ snacks.nvim ]] QoL plugins: picker, lazygit, terminal, notifier, indent, input
vim.pack.add { 'https://github.com/folke/snacks.nvim' }

require('snacks').setup {
  input = { enabled = true },
  notifier = { enabled = true },
  indent = { enabled = true },
  picker = { enabled = true, ui_select = true },
  lazygit = { enabled = true },
}

vim.keymap.set('n', '<leader><space>', function()
  Snacks.picker.smart()
end, { desc = '[S]mart [F]ind [F]iles' })

vim.keymap.set('n', '<leader>sd', function()
  Snacks.picker.diagnostics()
end, { desc = '[S]earch [D]iagnostics' })

vim.keymap.set('n', 'gd', function()
  Snacks.picker.lsp_definitions()
end, { desc = '[G]oto [D]efinition' })

vim.keymap.set('n', '<leader>sf', function()
  Snacks.picker.files()
end, { desc = '[S]earch [F]iles' })

vim.keymap.set({ 'n', 'x' }, '<leader>sw', function()
  Snacks.picker.grep_word()
end, { desc = 'Visual selection or word' })

vim.keymap.set('n', '<leader>sh', function()
  Snacks.picker.help()
end, { desc = 'Help Pages' })

vim.keymap.set('n', '<leader>sk', function()
  Snacks.picker.keymaps()
end, { desc = 'Keymaps' })

vim.keymap.set('n', '<leader>sg', function()
  Snacks.picker.grep()
end, { desc = '[S]earch by [G]rep' })

vim.keymap.set('n', '<leader>gg', function()
  Snacks.lazygit()
end, { desc = 'Lazygit' })

vim.keymap.set('n', '<leader>tt', function()
  Snacks.terminal.toggle()
end, { desc = 'Terminal' })
