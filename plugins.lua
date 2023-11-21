local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- default
        "lua",
        "yaml",
        "markdown",

        -- web dev
        "php",
        "html",
        "css",
        "javascript",
        "json",

        -- low level
        "go",
        "gomod",
        "gowork",
        "gosum",

        -- framework/library
        "vue",
      },
    },
  },


  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",

    dependencies = {
         "jose-elias-alvarez/null-ls.nvim",
         config = function()
           require "custom.configs.null-ls"
         end,
     },

     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },

  -- Transparent nvim 

  {
    'Exafunction/codeium.vim',
    lazy = false,
    config = function ()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    end
  },

  {
    'xiyaowong/transparent.nvim',
    lazy = false,
  },

  {
    'jwalton512/vim-blade',
    lazy = false,
  },

  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
        lazy = false,
    },
  },

  {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },

}

return plugins
