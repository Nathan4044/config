vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.signcolumn = 'no'
vim.opt.relativenumber = true
vim.opt.number = true

-- give undotree access to long-running undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

--keep at least 4 lines at top/bottom when scrolling
vim.opt.scrolloff = 4

vim.opt.updatetime = 50
