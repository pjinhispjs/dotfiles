return {
	cmd = { "lua-language-server" },
	filetypes = { "python" },
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					ignore = { "W503", "E241" },
					maxLineLength = 88,
				},
			},
		},
	},
}
