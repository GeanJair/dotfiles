-- regras
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.signcolumn = "yes:1"

vim.opt.guicursor = ""
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.list = false
vim.opt.cursorline = true

vim.opt.scrolloff = 8

vim.opt.pumheight = 8
vim.opt.pumborder = "rounded"
vim.opt.winborder = "rounded"

-- keybinds
local map = vim.keymap.set
map('n', '<leader>e', vim.cmd.Ex)
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>o', ':update<CR> :source<CR>')

map('n', '<C-u>', '<C-u>zz')
map('n', '<C-d>', '<C-d>zz')

map('n', '<leader>v', ':vsplit<CR>')
map('n', '<leader>s', ':split<CR>')

map('n', '<C-h>', '<C-w>h')
map('n', '<C-l>', '<C-w>l')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')

map('n', '<leader>f',  ':Pick files<CR>')
map('n', '<leader>g',  ':Pick grep<CR>')
map('n', '<leader>gl', ':Pick grep_live<CR>')
map('n', '<leader>r',  ':Pick resume<CR>')
map('n', '<leader>h',  ':Pick help<CR>')

-- pacotes
vim.pack.add({
	{src = "https://github.com/sainnhe/gruvbox-material"},
	{src = "https://github.com/nvim-mini/mini.pick"},
	{src = "https://github.com/neovim/nvim-lspconfig"},
})

-- inicia plugins e ativa lsps
require "mini.pick".setup()

vim.lsp.enable('lua_ls')
vim.lsp.enable('pyright')

vim.g.gruvbox_material_background = "hard"
vim.cmd("colorscheme gruvbox-material")
vim.cmd.filetype("plugin indent on")
vim.cmd(":hi statusline guibg=NONE")
