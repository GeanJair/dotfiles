Map = vim.keymap.set
Map('n', '<leader>e', vim.cmd.Ex)
Map('n', '<leader>w', ':w<CR>')
Map('n', '<leader>q', ':q<CR>')
Map('n', '<leader>o', ':update<CR> :source<CR>')

Map('n', '<C-u>', '<C-u>zz')
Map('n', '<C-d>', '<C-d>zz')

Map('n', '<leader>v', ':vsplit<CR>')
Map('n', '<leader>s', ':split<CR>')

Map('n', '<C-h>', '<C-w>h')
Map('n', '<C-l>', '<C-w>l')
Map('n', '<C-j>', '<C-w>j')
Map('n', '<C-k>', '<C-w>k')

