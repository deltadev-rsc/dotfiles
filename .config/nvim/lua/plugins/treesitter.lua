local ts = require('nvim-treesitter.configs')

ts.setup {
  ensure_installed = { 'lua', 'c', 'cpp', 'make', 'rust', 'bash', 'nasm' }, 
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}

