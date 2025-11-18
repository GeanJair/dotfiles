-- numbers
local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.numberwidth = 1

-- tab com 4 espaços
opt.tabstop = 4
opt.shiftwidth = 4
opt.smarttab = true

-- pop-up do omnifunc config
opt.pumheight = 8
opt.pumborder = "rounded"
opt.winborder = "rounded"

-- algumas coisas que nao sei definir com poucas palavras
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.swapfile = false
opt.splitright = true
opt.splitbelow = true
opt.signcolumn = "yes"
opt.fillchars = { eob = " " }
opt.cursorline = true
opt.hlsearch = false
opt.incsearch = true

vim.g.mapleader = " "

local map = vim.keymap.set
-- salvar e fechar
map('n', '<leader>e', vim.cmd.Ex)
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>o', ':update<CR> :source<CR>')

-- movimentação
map('n', '<C-u>', '<C-u>zz')
map('n', '<C-d>', '<C-d>zz')

map({ 'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
map({ 'n', 'v', 'x' }, '<leader>d', '"+d<CR>')

-- facilita a criacao de splits
map('n', '<leader>v', ':vsplit<CR>')
map('n', '<leader>s', ':split<CR>')

-- facilita a movimentação entre splits
map('n', '<C-h>', '<C-w>h')
map('n', '<C-l>', '<C-w>l')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')

map('n', '<leader>lf', vim.lsp.buf.format)

vim.pack.add({
	-- tema
	{ src = "https://github.com/dgox16/oldworld.nvim" },

	-- fechmando de aspas, colchetes etc, automatico
	{ src = "https://github.com/windwp/nvim-autopairs" },

	-- telescope e sua dependencia
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },

	-- Treesitter
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },

	-- LSP
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	-- Java LSP
	{ src = "https://github.com/mfussenegger/nvim-jdtls" },

	-- Autocomplete
	{ src = "https://github.com/saghen/blink.cmp",               version = vim.version.range('*') },
	{src = "https://github.com/L3MON4D3/LuaSnip"},
	{src = "https://github.com/rafamadriz/friendly-snippets"}

})

require "nvim-autopairs".setup()
require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
require "mason".setup()
require "mason-lspconfig".setup({
	automatic_enable = {
		exclude = {
			"jdtls"
		}
	}
})
require "blink.cmp".setup({
	completion = { documentation = { auto_show = true } }
})
require("luasnip.loaders.from_vscode").lazy_load()

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>h', builtin.help_tags, { desc = 'Telescope help tags' })

vim.cmd("colorscheme oldworld")
vim.cmd.filetype("plugin indent on")
vim.cmd(":hi statusline guibg=NONE")
