return {
	cmd = { "lua-language-server" },
	filetypes = { "python" },
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					ignore = { "W503" },
					maxLineLength = 88,
				},
			},
		},
	},
}
