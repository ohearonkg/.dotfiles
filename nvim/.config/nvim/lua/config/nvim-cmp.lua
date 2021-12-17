vim.opt.completeopt = { "menu", "menuone", "noselect" }

local lspkind = require("lspkind")
lspkind.init()

local cmp = require("cmp")

cmp.setup({ 
  snippet = {
    expand = function(args) 
      require("luasnip").lsp_expand(args.body)
    end,
  },

  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.close(),
    ["<c-y>"] = cmp.mapping(
      cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
      { "i", "c" }
    ),
  },

  sources = cmp.config.sources({
    { name = "nvim_lsp", max_item_count = 4 },
    { name = "path" , max_item_count = 4 },
    { name = "buffer", keyword_length = 3 },
  }),

  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = "[buf]",
        nvim_lsp = "[LSP]",
        path = "[path]",
      }
    }
  },

  experimental = {
    native_menu = false,
    ghost_text = true,
  },
})

