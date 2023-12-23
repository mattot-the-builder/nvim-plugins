local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
   formatting.prettierd,
   formatting.goimports,
   formatting.gofumpt,
   formatting.phpcsfixer,
   formatting.blade_formatter,
   formatting.blade_formatter,
   formatting.rustywind,

   lint.golangci_lint,
   lint.phpcs,
   lint.eslint_d,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
   debug = true,
   sources = sources,
}
