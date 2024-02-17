return {
	{ "cappyzawa/trim.nvim",
		config = function ()
			require('trim').setup({
				ft_blocklist = {"diff"},
			})
		end
	}
}
