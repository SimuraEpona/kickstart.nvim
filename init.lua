require 'core.options'
require 'core.keymaps'
require 'core.autocmds'

vim.filetype.add {
  extension = {
    mdx = 'markdown.mdx',
  },
}

require 'core.lazy'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
