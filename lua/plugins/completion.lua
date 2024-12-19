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
      transform_items = function(ctx, items)
        return vim.tbl_filter(function(item)
          return item.kind ~= vim.lsp.protocol.CompletionItemKind.Text
        end, items)
      end,
      completion = {
        enabled_providers = { 'lsp', 'path', 'snippets' },
      },
      providers = {
        snippets = {
          opts = {
            -- Disable the "all" snippets which gives useless stuff like the 'date' snippet
            global_snippets = {},
          },
        },
      },
    },

    -- experimental signature help support
    signature = { enabled = true },
    completion = { accept = { auto_brackets = { enabled = true } } },
  },
}
