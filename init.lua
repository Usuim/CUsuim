vim.opt.runtimepath:remove(vim.fn.expand('~/.config/nvim'))
vim.opt.packpath:remove(vim.fn.expand('~/.local/share/nvim/site'))

vim.opt.runtimepath:append(vim.fn.expand('~/.config/cusuim'))
vim.opt.packpath:append(vim.fn.expand('~/.config/cusuim'))


require('options')
require('autoinsert')
require('plugin')
