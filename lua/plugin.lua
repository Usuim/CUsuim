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
    config = function()
      require('plugins.nvimtree')
    end
  },
  --Dev icons
  {
    "nvim-tree/nvim-web-devicons"
  }
}

require("lazy").setup(plugins, {
  performance = {
    reset_packpath = false,
    rtp = {
      reset = false,
    }
  }
})
