-- create new tab that copies the current window
vim.keymap.set("n", "<leader>tn", function()
    vim.cmd.tabnew { args = { '%' } }
end)

vim.keymap.set("n", "<leader>v", vim.cmd.vsplit)
