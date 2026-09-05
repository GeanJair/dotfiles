vim.pack.add({
	{src = "https://github.com/f4z3r/gruvbox-material.nvim"},
	{src = "https://github.com/nvim-treesitter/nvim-treesitter"},

	{src = "https://github.com/nvim-lua/plenary.nvim"},
	{src = "https://github.com/nvim-telescope/telescope.nvim"},
	{src = "https://github.com/nvim-tree/nvim-web-devicons"},

	{src = "https://github.com/neovim/nvim-lspconfig"},
	{src = "https://github.com/mason-org/mason.nvim"},

	{src = "https://github.com/nvim-lualine/lualine.nvim"}

})

require"plugins.gruvbox"
require"plugins.treesitter"
require"plugins.telescope"
require"plugins.lsp"
require"plugins.lualine"

vim.cmd.filetype("plugin indent on")
vim.cmd(":hi statusline guibg=NONE")

