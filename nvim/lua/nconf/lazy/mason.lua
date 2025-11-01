return {
    'williamboman/mason.nvim',
    config = function()
        pcall(vim.cmd, 'MasonUpdate')
    end
}
