local builtin = require('telescope.builtin')
local telescope = require('telescope')

telescope.setup({
    -- uncomment for hidden files to be seen in telescope
    -- defaults = {
    --     vimgrep_arguments = {
    --         "rg",
    --         "--color=never",
    --         "--no-heading",
    --         "--with-filename",
    --         "--line-number",
    --         "--column",
    --         "--hidden",
    --         "--smart-case",
    --         "--no-ignore",
    --     },
    -- },
    -- pickers = {
    --     find_files = {
    --         hidden = true,
    --         no_ignore = true,
    --         no_ignore_parent = true,
    --     },
    --     live_grep = {
    --         additional_args = function(_)
    --             return { "--hidden" }
    --         end
    --     },
    -- },
})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
