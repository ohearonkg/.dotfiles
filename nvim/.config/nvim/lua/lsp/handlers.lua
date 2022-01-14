local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- TODO: Remove duplication of this function being used
-- here and within the keymaps.lua file
local keymap_options = { noremap = true, silent = true }

local capabilities = vim.lsp.protocol.make_client_capabilities()

local signs = {
  { name = "DiagnosticSignError", text = "" },
  { name = "DiagnosticSignWarn", text = "" },
  { name = "DiagnosticSignHint", text = "" },
  { name = "DiagnosticSignInfo", text = "" },
}

local diagnostic_config = {
  virtual_text = false ,
  signs = {
    active = signs,
  },
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    focusable = true,
    source = "always",
    header = "",
    prefix = "",
  },
}

local lsp_buffer_keymaps = {
  { lhs = "gD", rhs = "<cmd>lua vim.lsp.buf.declaration()<CR>" },
  { lhs = "gd", rhs = "<cmd>lua vim.lsp.buf.definition()<CR>" },
  { lhs = "gh", rhs = "<cmd>lua vim.lsp.buf.hover()<CR>" },
  { lhs = "gi", rhs = "<cmd>lua vim.lsp.buf.implementation()<CR>" },
  { lhs = "<C-k>", rhs = "<cmd>lua vim.lsp.buf.signature_help()<CR>" },
  { lhs = "<leader>rn", rhs = "<cmd>lua vim.lsp.buf.rename()<CR>" },
  { lhs = "gr", rhs = "<cmd>lua vim.lsp.buf.references()<CR>" },
  { lhs = "<leader>ca", rhs = "<cmd>lua vim.lsp.buf.code_action()<CR>" },
  { lhs = "[d", rhs = "<cmd>lua vim.diagnostic.goto_prev()<CR>" },
  { lhs = "gl", rhs = "<cmd>lua vim.diagnostic.open_float()<CR>" },
  { lhs = "]d", rhs = "<cmd>lua vim.diagnostic.goto_next()<CR>" },
  { lhs = "<leader>q", rhs = "<cmd>lua vim.diagnostic.setloclist()<CR>" }
}

local exported_config = {}

-- General Config Setup
exported_config.setup = function()
  -- Add LSP Sings
  for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
  end

  -- Add Diagnostic Configuration
  vim.diagnostic.config(diagnostic_config)
end

-- When Attached To Buffer 
exported_config.on_attach = function(client, buffer) 
  -- Disable TS Server Formatting
  if client.name == "tsserver" then
    client.resolved_capabilities.document_formatting = false
  end

  if client.name == "stylelint_lsp" then
    client.resolved_capabilities.document_formatting = false
  end

  -- Add LSP Buffer Key Maps
  for _, keymap in ipairs(lsp_buffer_keymaps) do
    vim.api.nvim_buf_set_keymap(buffer, "n", keymap.lhs, keymap.rhs, keymap_options)
  end
end

-- Add Additional Capabilities
exported_config.capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

return exported_config
