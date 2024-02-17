-- https://github.com/windwp/nvim-autopairs
return {
	-- automatically pair parenthesis
	{ "windwp/nvim-autopairs",
		config = function ()
			require("nvim-autopairs").setup {}
		end,
	},
}
