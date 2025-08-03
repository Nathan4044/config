vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
-- vim.opt.signcolumn = "yes:1"
vim.opt.signcolumn = "no"
--keep at least 4 lines at top/bottom when scrolling
vim.opt.scrolloff = 4
-- vim.opt.scrolloff = 8
vim.opt.showcmd = true

-- give undotree access to long-running undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.showmode = false

-- idle ms before swap written to disk
vim.opt.updatetime = 50
-- No automatic comment insertion
-- vim.cmd([[autocmd FileType * set formatoptions-=ro]])
