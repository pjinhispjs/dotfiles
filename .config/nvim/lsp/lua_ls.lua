return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	settings = {
		Lua = {
			workspace = {
				library = {
					"${3rd}/love2d/library",
				},
				userThirdParty = { os.getenv("HOME") .. ".local/share/LuaAddons" },
				checkThirdParty = "Apply",
			},
		},
	},
}
