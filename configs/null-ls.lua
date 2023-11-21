local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
   formatting.prettierd,
   formatting.goimports,
   formatting.gofumpt,
   formatting.phpcsfixer,
   formatting.blade_formatter,

   lint.golangci_lint,
   lint.phpcs,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
   debug = true,
   sources = sources,
}
