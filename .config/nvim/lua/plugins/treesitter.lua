-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/p00f/nvim-ts-rainbow
return {
	{ "nvim-treesitter/nvim-treesitter",
		dependencies = {
			{ "p00f/nvim-ts-rainbow" },
			{ "nvim-treesitter/nvim-treesitter-context" },
		},
		config = function()
			vim.cmd("TSUpdate")
			require'nvim-treesitter.configs'.setup {
				auto_install = true,
				sync_install = false,
				ignore_install = {},
				-- A list of parser names, or "all" (the five listed parsers should always be installed)
				ensure_installed = {
					"bash",
					"bitbake",
					"c",
					"comment",
					"cpp",
					"css",
					"diff",
					"doxygen",
					"html",
					"javascript",
					"lua",
					"make",
					"php",
					"python",
					"query",
					"vim",
					"vimdoc",
					"xml",
				},
				modules = {},
				highlight = {
					enable = true,
					-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
					-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
					-- Using this option may slow down your editor, and you may see some duplicate highlights.
					-- Instead of true it can also be a list of languages
					additional_vim_regex_highlighting = false,
				},
				rainbow = {
					enable = true,
					extended_mode = true,
				},
				treesitter_language_injections = true,
			}
			require'treesitter-context'.setup {
				enable = true,
			}
		end,
	},
}
