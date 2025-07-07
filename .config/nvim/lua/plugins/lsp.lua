return {
	{ "mason-org/mason.nvim", dependencies = { "neovim/nvim-lspconfig" }, opts = {} },
	{
		"hasansujon786/nvim-navbuddy",
		dependencies = {
			"SmiteshP/nvim-navic",
			"MunifTanjim/nui.nvim",
		},
		opts = { lsp = { auto_attach = true } },
	},
}
