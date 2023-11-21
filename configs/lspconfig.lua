local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  "lua_ls",
  "html",
  "cssls",
  "tailwindcss",
  "gopls",
  "phpactor",
  "arduino_language_server",
  "volar",
  "golangci_lint_ls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
