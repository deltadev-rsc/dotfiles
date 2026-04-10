vim.g.mapleader = " "

-- for plugins
vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CP>')
vim.keymap.set({'n', 'i', 'v'}, '<A-n>', ':Neotree<CR>')
vim.keymap.set('n', '<A-t>', ':Themery<CR>')
vim.keymap.set('n', '<leader>m', ':Mason<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>t', ':ToggleTerm direction=horizontal size=20<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ll', ':Lazy<CR>', { noremap = true, silent = true})
vim.keymap.set('n', '<S-t>', ':terminal<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>l', ':BufferLineCloseLeft<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>r', ':BufferLineCloseRight<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>o', ':BufferLineCloseOthers<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f', ':FFFFind<CR>', {noremap = true, silent = true })

-- basics
vim.keymap.set('n', '<A-s>', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<A-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, '<A-x>', 'dd', { noremap = true, silent = true })
vim.keymap.set({'n', 'i'}, '<A-z>', 'u', { noremap = true, silent = true })
vim.keymap.set('n', '<A-w>', ':q<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<A-w>', '<Esc>:q<CR>', { noremap = true, silent = true })
vim.keymap.set({'n', 'i'}, '<A-e>', '<Esc>:q<CR>', { noremap = true, silent = true })
