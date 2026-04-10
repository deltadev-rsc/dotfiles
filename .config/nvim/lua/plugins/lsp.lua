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


vim.lsp.config('clangd', {
    cmd = { "clangd" },
    filetypes = {
        "c",
        "cpp",
        "objc",
        "objcpp",
        "cuda"
    },
    
    root_markers = {
        ".clangd",
        ".clangd-tidy",
        ".clangd-format",
        "compile_commands.json",
        "compile_flags.txt",
        "configure.ac",
        ".git"
    },

    capabilities = {
        offsetEncoding = {
            "utf-8",
            "utf-16"
        },
        textDocument = {
            completion = {
                editsNearCursor = true
            }
        }
    }
})

vim.lsp.config('bash-language-server', {
    cmd = { 'bash-language-server', 'start' },
    filetypes = { 'bash', 'sh' },
    root_dir = function(fname)
        return vim.fs.dirname(vim.fs.find('.git', {
            path = fname,
            upward = true
        }) [1])
    end
})
