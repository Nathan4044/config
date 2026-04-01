vim.g.mapleader = " "

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    -- 1. Get the filetype of the current buffer
    local ft = args.match

    -- 2. Check if a Treesitter parser exists for this filetype
    -- vim.treesitter.language.get_lang returns the parser name if found
    local parser_exists = pcall(vim.treesitter.language.get_lang, ft)

    if parser_exists then
      -- 3. If a parser exists, attempt to start treesitter highlighting
      -- We use pcall to ensure this doesn't error out on unsupported filetypes
      pcall(vim.treesitter.start)
    end
  end,
})

require("nconf.lazy_init")
require("nconf.set")
require("nconf.remap")
