local keyMapper = require("utils.keyMapper").mapKey

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls", -- lua
					"rust_analyzer", -- rust
					"taplo", -- toml
					"pyright", -- python
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({})
			lspconfig.rust_analyzer.setup({
				cmd = {
					"rustup",
					"run",
					"stable",
					"rust-analyzer",
				},
			})
			lspconfig.taplo.setup({})
			lspconfig.pyright.setup({})

			keyMapper("K", vim.lsp.buf.hover)
			keyMapper("R", vim.lsp.buf.rename)
			keyMapper("gd", vim.lsp.buf.definition)
			keyMapper("<leader>ca", vim.lsp.buf.code_action)
		end,
	},
}
