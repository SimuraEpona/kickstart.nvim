-- Loads every plugin module in dependency order.
--
-- vim.pack has no lazy-loading or dependency resolution, so order matters:
--  - colorscheme + mini.icons first (icons used by other UIs)
--  - treesitter before mdx (mdx needs treesitter parsers)
--  - lazydev + dadbod before blink (they provide blink completion sources)
local modules = {
  'matteblack', -- colorscheme
  'mini', -- icons / textobjects / surround / statusline
  'snacks', -- picker, lazygit, terminal, notifier
  'treesitter',
  'mdx',
  'lazydev',
  'dadbod',
  'blink',
  'lsp',
  'conform',
  'oil',
  'guess-indent',
  'git-signs',
  'which-key',
  'todo-comments',
  'autopairs',
}

for _, name in ipairs(modules) do
  require('custom.plugins.' .. name)
end
