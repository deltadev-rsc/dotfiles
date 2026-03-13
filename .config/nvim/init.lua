-- автозапуск lsp для clangd и rust-analyzer
vim.cmd("lua vim.lsp.enable('clangd')")
vim.cmd("lua vim.lsp.enable('rust_analyzer')")

-- настройка и писок плагинов для установки
require('core.plugins')
require('core.mappings')
require('core.configs')

-- плагины
require('plugins.neotree')
require('plugins.treesitter')
require('plugins.cmp')
require('plugins.mason')
require('plugins.lualine')
require('plugins.bufferline')
require('plugins.dashboard')
require('plugins.dapui')
require('plugins.themery')
require('plugins.icons')
require('plugins.lsp')
require('plugins.fff')
