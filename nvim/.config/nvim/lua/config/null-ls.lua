local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier,
    code_actions.eslint
  }
})

-- Autocommand that formats the current buffer
-- on save
vim.cmd([[
  augroup format_on_save
    autocmd!
    autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()
  augroup end
]])

