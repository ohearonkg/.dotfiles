local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier,
  }
})

-- Autocommand that formats the current buffer
-- on save
vim.cmd([[
  augroup format_on_save
    autocmd!
    autocmd BufWritePost * lua vim.lsp.buf.formatting()
  augroup end
]])

