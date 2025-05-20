-- https://github.com/lewis6991/gitsigns.nvim
return {
	{
		"tpope/vim-fugitive",
		config = function()
			vim.api.nvim_set_keymap("", "<leader>gg", "<cmd>Git<cr>", { noremap = true, desc = "Git status" })
			vim.api.nvim_set_keymap("", "<leader>gaa", "<cmd>Git add %<cr>", { noremap = true, desc = "Git add current file" })
			vim.api.nvim_set_keymap("", "<leader>gap", "<cmd>Git add -p %<cr>", { noremap = true, desc = "Git add patch current file" })
			vim.api.nvim_set_keymap("", "<leader>gcc", "<cmd>Git commit<cr>", { noremap = true, desc = "Git commit" })
			vim.api.nvim_set_keymap("", "<leader>gca", "<cmd>Git commit --amend<cr>", { noremap = true, desc = "Git amend commit" })
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
			vim.api.nvim_set_keymap(
				"",
				"<leader>gh",
				"<cmd>Gitsigns preview_hunk<cr>",
				{ noremap = true, desc = "Show hunk" }
			)
			vim.api.nvim_set_keymap(
				"",
				"<leader>gr",
				"<cmd>Gitsigns reset_hunk<cr>",
				{ noremap = true, desc = "Reset hunk" }
			)
			vim.api.nvim_set_keymap(
				"",
				"<leader>gb",
				"<cmd>Gitsigns blame_line<cr>",
				{ noremap = true, desc = "Git blame" }
			)
		end,
	},
}
