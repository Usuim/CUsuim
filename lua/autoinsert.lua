vim.api.nvim_command("autocmd BufRead,BufNewFile,BufEnter * set formatoptions-=cro | start")
vim.api.nvim_command("autocmd BufEnter,BufNew,VimEnter NvimTree stopinsert")
