vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- J and K to move highlighted visual block up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- create new tab that copies the current window
vim.keymap.set("n", "<leader>tn", function()
    vim.cmd.tabnew { args = { '%' } }
end)

vim.keymap.set("n", "<leader>v", vim.cmd.vsplit)
