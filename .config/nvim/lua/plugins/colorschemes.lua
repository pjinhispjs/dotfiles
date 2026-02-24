return {
	-- colorschemes
	{"sainnhe/everforest",
	-- 	-- Load the colorscheme first and apply it automatically
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd.colorscheme("everforest")
	-- 	end,
	},
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_background = 'hard'
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
}
