return {
	-- colorschemes
	{"sainnhe/everforest",
		-- Load the colorscheme first and apply it automatically
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("everforest")
		end,
	},
}
