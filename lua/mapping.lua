local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Terminal
map("n", "<c-t>", "<C-u>silent! :ToggleTerm size=10<CR>", { silent = true })
map("i", "<c-t>", "<c-o>:<C-u>silent! :ToggleTerm size=10<CR>", { silent = true })

-- NvimTree
map("n", "<F2>", "<CMD>:NvimTreeToggle<CR>")
map("i", "<F2>", "<CMD>:NvimTreeToggle<CR>")

-- Ctrl+Delete
map("i", "<C-BS>", "<C-w>")
map("i", "<C-h>", "<C-w>")
