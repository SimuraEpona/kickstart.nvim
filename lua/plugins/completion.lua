return {
  'saghen/blink.cmp',
  dependencies = {
    {
      'L3MON4D3/LuaSnip',
      version = 'v2.*',
      config = function()
        local ls = require 'luasnip'

        ls.filetype_extend('ruby', { 'rails' })
      end,
      dependencies = {
        {
          'rafamadriz/friendly-snippets',
          config = function()
            require('luasnip.loaders.from_vscode').lazy_load()
          end,
        },
      },
    },
  },
  version = 'v0.*',
  opts = {
    keymap = { preset = 'default' },

    appearance = {
      nerd_font_variant = 'mono',
    },

    snippets = {
      expand = function(snippet)
        require('luasnip').lsp_expand(snippet)
      end,
      active = function(filter)
        if filter and filter.direction then
          return require('luasnip').jumpable(filter.direction)
        end
        return require('luasnip').in_snippet()
      end,
      jump = function(direction)
        require('luasnip').jump(direction)
      end,
    },

    sources = {
      default = { 'snippets', 'lsp', 'path', 'buffer' },
      -- optionally disable cmdline completions
      -- cmdline = {},
    },

    -- experimental signature help support
    signature = { enabled = true },
  },
}
