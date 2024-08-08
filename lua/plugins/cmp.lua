return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    local lspkind = require "lspkind"
    opts.window = {
      completion = { border = nil },
      documentation = { border = nil },
    }
    opts.formatting = {
      format = lspkind.cmp_format {
        maxwidth = 20,
        ellipsis_char = "...",
      },
    }

    local luasnip = require "luasnip"
    local cmp = require "cmp"
    opts.sources = cmp.config.sources {
      { name = "nvim_lsp", priority = 1000 },
      { name = "luasnip", priority = 750 },
      { name = "buffer", priority = 500 },
      { name = "path", priority = 250 },
    }

    opts.mapping = {
      ["<Tab>"] = cmp.mapping(function(fallback)
        -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
        if cmp.visible() then
          local entry = cmp.get_selected_entry()
          if not entry then cmp.select_next_item { behavior = cmp.SelectBehavior.Select } end
          cmp.confirm()
        else
          fallback()
        end
      end, { "i" }),
      ["<Up>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
      ["<Down>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
      ["<C-K>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
      ["<C-J>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
      ["<C-U>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
      ["<C-D>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
      ["<C-P>"] = cmp.mapping(function(_)
        if luasnip.locally_jumpable(-1) then luasnip.jump(-1) end
      end, { "i", "s" }),
      ["<C-N>"] = cmp.mapping(function(_)
        if luasnip.locally_jumpable(1) then luasnip.jump(1) end
      end, { "i", "s" }),
    }
  end,
}
