return {
	cmd = { "lua-language-server" },
	filetypes = { "python" },
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					ignore = { "W503", "E241", "E221" },
					maxLineLength = 88,
				},
			},
		},
	},
}
