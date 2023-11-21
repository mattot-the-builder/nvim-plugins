---@type ChadrcConfig
local M = {}

M.ui = { theme = 'tokyodark' }
M.plugins = "custom.plugins"

-- vim.keymap.set('n', '<leader>te', ':TransparentEnable<CR>', {noremap = false})
vim.keymap.set('n', '<leader>td', ':TransparentDisable<CR>', {noremap = false})
vim.keymap.set('n', '<leader>tt', ':TransparentToggle<CR>', {noremap = false})

vim.opt.scrolloff = 10

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})

return M
