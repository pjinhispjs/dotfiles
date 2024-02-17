-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
	{ "nvim-tree/nvim-web-devicons", },
	{ "nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			{"nvim-lua/plenary.nvim"},
			{"MunifTanjim/nui.nvim"},
		},
		config = function ()
			require("neo-tree").setup({
				source_selector = {
					winbar = false,
					follow_current_file = true,
					statusline = false,
					use_libv_file_watcher = true,
				}
			})
		end,
		keys = {
			{"<leader>t",
			function ()
				require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
			end, desc = "NeoTree toggle"},
		},
	},
}
