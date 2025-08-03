-- move to directory
vim.keymap.set("n", "-", vim.cmd.Ex)

-- create new tab that copies the current window
vim.keymap.set("n", "<leader>tn", function()
    vim.cmd.tabnew { args = { '%' } }
end)

vim.keymap.set("n", "<leader>v", vim.cmd.vsplit)

-- move highlighted text up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- quick find and replace for word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- flash highlight for yanked section
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlights text when yanking",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
