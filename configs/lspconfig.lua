local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  "lua_ls",
  "luau_lsp",
  "html",
  "cssls",
  "tailwindcss",
  "gopls",
  "phpactor",
  "volar",
  "golangci_lint_ls",
  "angularls",
  "tsserver",
  "vuels",
  "rust_analyzer",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
