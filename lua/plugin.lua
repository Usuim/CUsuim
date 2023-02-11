local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

  -- Onedark theme
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup {
          style = 'darker'
      }
      require('onedark').load()
    end,
  },

  --NvimTree
  {
    'Usuim/nvim-tree.lua',
    dependencies = { "nvim-tree/nvim-web-devicons"},
    config = function()
      require('plugins.nvimtree')
    end
  },

  --Terminal
  {
    "Usuim/toggleterm.nvim",
  },
  {
    "voldikss/vim-floaterm"
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function ()
      require("plugins.treesitter")
    end
  },

  -- Dashboard
  {
    "Usuim/dashboard-nvim",
    config = function ()
      require("plugins.dashboard")
    end
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function ()
      require("plugins.bufferline")
    end
  },

  -- Feline bar
  {
    "feline-nvim/feline.nvim",
    config = function ()
      require("plugins.feline")
    end
  },

  -- Lsp
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "nvim-lua/lsp_extensions.nvim",
      "RishabhRD/popfix",
      "RishabhRD/nvim-lsputils",
    },
    config = function ()
      require('plugins.lsp')
    end
  },

  -- NvimCmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "onsails/lspkind-nvim",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/cmp-nvim-lsp-document-symbol"
    },
    config = function ()
      require('plugins.cmp')
    end
  },

  --Snippets
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets"
    }
  },

  -- Renamer
  {
    "filipdutescu/renamer.nvim",
    config = function ()
      require('renamer').setup()
    end
  },

  -- Telescope
  {
    "Usuim/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
      "nyarthan/telescope-code-actions.nvim"
    },
    config = function ()
      require('plugins.telescope')
    end
  },

  -- Nvim comment
  {
    "terrortylor/nvim-comment",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring"
    },
    config = function ()
      require('plugins.comment')
    end
  },

  -- Neoformat
  {
    "sbdchd/neoformat"
  },

  -- Trim on save
  {
    "cappyzawa/trim.nvim",
    config = function ()
      require('trim').setup({
        disable = {},
        patterns = {
          [[%s/\s\+$//e]],
          [[%s/\($\n\s*\)\+\%$//]],
          [[%s/\%^\n\+//]],
        },
      })
    end
  },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    dependencies = {
      "tpope/vim-surround"
    },
    config = function ()
      require('nvim-autopairs').setup()
    end
  },

  -- Notifications
  {
    "rcarriga/nvim-notify"
  },

  -- Identline
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function ()
     require('plugins.ident')
    end
  }
}

require("lazy").setup(plugins, {
  root = vim.fn.stdpath("data") .. "/cusuimLazy",
  lockfile = vim.fn.expand('~/.config/cusuim/lazy-lock.json'),
  performance = {
    reset_packpath = false,
    rtp = {
      reset = false,
    }
  }
})
