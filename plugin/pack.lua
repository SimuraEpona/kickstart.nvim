-- Convenience commands/keymaps for `vim.pack` (Neovim's built-in plugin manager),
-- giving a lazy.nvim-like workflow.

-- Update all plugins. Opens a review buffer listing pending commits;
-- save it (`:w`) to confirm, or close it to cancel.
vim.api.nvim_create_user_command('PackUpdate', function()
  vim.pack.update()
end, { desc = 'Plugins: update all (review buffer, :w to confirm)' })

-- Show plugin status / pending updates without touching the network.
vim.api.nvim_create_user_command('PackStatus', function()
  vim.pack.update(nil, { offline = true })
end, { desc = 'Plugins: status / pending updates (offline)' })

-- List installed plugins (● active, ○ inactive).
vim.api.nvim_create_user_command('PackList', function()
  local lines = {}
  for _, p in ipairs(vim.pack.get()) do
    local version = type(p.spec.version) == 'string' and (' (' .. p.spec.version .. ')') or ''
    lines[#lines + 1] = ('%s %s%s'):format(p.active and '●' or '○', p.spec.name, version)
  end
  table.sort(lines)
  vim.notify(table.concat(lines, '\n'), vim.log.levels.INFO, { title = 'Installed plugins' })
end, { desc = 'Plugins: list installed' })

-- Remove plugins that are installed on disk but no longer `vim.pack.add`ed
-- by the config (i.e. inactive after startup). Asks for confirmation first.
vim.api.nvim_create_user_command('PackClean', function()
  local unused = {}
  for _, p in ipairs(vim.pack.get()) do
    if not p.active then
      unused[#unused + 1] = p.spec.name
    end
  end
  table.sort(unused)

  if #unused == 0 then
    vim.notify('Nothing to clean.', vim.log.levels.INFO, { title = 'Plugins' })
    return
  end

  local prompt = ('Remove %d unused plugin(s)?\n  - %s'):format(#unused, table.concat(unused, '\n  - '))
  if vim.fn.confirm(prompt, '&Yes\n&No', 2) ~= 1 then
    return
  end

  vim.pack.del(unused)
  vim.notify('Removed: ' .. table.concat(unused, ', '), vim.log.levels.INFO, { title = 'Plugins' })
end, { desc = 'Plugins: delete unused (installed but not in config)' })

vim.keymap.set('n', '<leader>pu', '<cmd>PackUpdate<cr>', { desc = '[P]lugins [U]pdate' })
vim.keymap.set('n', '<leader>ps', '<cmd>PackStatus<cr>', { desc = '[P]lugins [S]tatus' })
vim.keymap.set('n', '<leader>pl', '<cmd>PackList<cr>', { desc = '[P]lugins [L]ist' })
vim.keymap.set('n', '<leader>pd', '<cmd>PackClean<cr>', { desc = '[P]lugins [D]elete unused' })
