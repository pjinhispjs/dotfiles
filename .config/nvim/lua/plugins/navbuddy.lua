-- https://github.com/SmiteshP/nvim-navbuddy
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{
			"SmiteshP/nvim-navbuddy",
			dependencies = {
				"SmiteshP/nvim-navic",
				"MunifTanjim/nui.nvim"
			},
			opts = { lsp = { auto_attach = true } }
		}
	},
	-- your lsp config or other stuff
	config = function ()
		vim.api.nvim_set_keymap("n", "<leader>a", "<cmd>silent! Navbuddy<cr>", {silent = true})
	end,
}
