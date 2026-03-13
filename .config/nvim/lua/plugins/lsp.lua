vim.lsp.set_log_level("debug")

vim.lsp.config('rust_analyzer', {
    settings = {
        ['rust-analyzer'] = {},
    },
    capabilities = {
        offsetEncoding = { "utf-8", "utf-16" },
        textDocument = {
            completion = {
                editsNearCursor = true
            }
        }
    },
    cmd = { "rust_analyzer" },
    filetypes = { "rs" }
})


vim.lsp.config('clangd', {})
