return {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
        require('conform').setup({
            -- formatters_by_ft tips:
            -- Conform will run multiple formatters sequentially
            -- Use a sub-list to run only the first available formatter
            formatters_by_ft = {
                lua = { 'stylua' },
                python = { 'isort', 'black' },
                rust = { 'rustfmt' }
            },
            format_on_save = {
                -- These options will be passed to conform.format()
                timeout_ms = 500,
                lsp_fallback = true,
            },
        })
    end,
}
