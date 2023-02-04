vim.cmd([[aunmenu PopUp]])

-- Normal - Insert
vim.cmd([[:amenu 90.100 Usuim.Go\ to\ Definition <cmd>:lua vim.lsp.buf.definition()<CR>]])
vim.cmd([[:amenu 90.100 Usuim.Go\ to\ Type\ Definition <cmd>:lua vim.lsp.buf.type_definition()<CR>]])
vim.cmd([[:amenu 90.100 Usuim.Go\ to\ Implementations <cmd>:Telescope lsp_implementations<CR>]])
vim.cmd([[:amenu 90.100 Usuim.Go\ to\ References <cmd>:Telescope lsp_references<CR>]])
vim.cmd([[:amenu 90.100 Usuim.Tasks\ > <cmd>:popup Tasks<CR>]])
vim.cmd([[:amenu 90.100 Usuim.-1- *]])
vim.cmd([[:amenu 90.100 Usuim.Rename\ Definition <cmd>:lua require('renamer').rename()<CR>]])
vim.cmd([[:amenu 90.100 Usuim.Code\ Actions <cmd>:lua require('telescope').extensions.code_actions.code_actions()<CR>]])
vim.cmd([[:amenu 90.100 Usuim.-2- *]])

-- Copy/Cut/Paste
vim.cmd([[:imenu 90.100 Usuim.Copy <C-C>]])
vim.cmd([[:nmenu 90.100 Usuim.Copy <C-C>]])
vim.cmd([[:imenu 90.100 Usuim.Cut <C-X>]])
vim.cmd([[:nmenu 90.100 Usuim.Cut <C-X>]])
vim.cmd([[:imenu 90.100 Usuim.Paste <C-V>]])
vim.cmd([[:nmenu 90.100 Usuim.Paste <C-V>]])

vim.cmd([[:amenu 90.100 Usuim.-3- *]])
-- Format Document
vim.cmd([[:amenu 90.100 Usuim.Format\ Document <cmd>:Neoformat<CR>]])

-- Visual
vim.cmd([[:vmenu 90.110 VUsuim.Copy "+y]])
vim.cmd([[:vmenu 90.110 VUsuim.Cut "+x]])
vim.cmd([[:vmenu 90.110 VUsuim.Paste <C-V>]])
vim.cmd([[:amenu 90.110 VUsuim.-1- *]])
vim.cmd([[:vmenu 90.110 VUsuim.Delete "_d]])

vim.cmd([[:imenu 90.110 VUsuim.Copy "+y]])
vim.cmd([[:imenu 90.110 VUsuim.Cut "+x]])
vim.cmd([[:imenu 90.110 VUsuim.Paste <C-V>]])
vim.cmd([[:imenu 90.110 VUsuim.Delete "_dd]])

-- Tasks
vim.cmd([[:amenu 100.100 Tasks.Run <cmd>:lua RunCode()<CR>]])
vim.cmd([[:amenu 100.100 Tasks.Build <cmd>:lua BuildCode()<CR>]])
vim.cmd([[:amenu 100.100 Tasks.Build\ and\ Run <cmd>:lua BuildAndRun()<CR>]])
vim.cmd([[:amenu 100.100 Tasks.Reconfigure\ Build\ Directory <cmd>:lua ReconfigureBuildDirectoriy()<CR>]])
vim.cmd([[:amenu 100.100 Tasks.Update\ Clangd\ Paths <cmd>:lua UpClangd()<CR>]])
