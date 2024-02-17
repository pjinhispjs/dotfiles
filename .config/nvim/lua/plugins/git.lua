-- https://github.com/lewis6991/gitsigns.nvim
return {
	{ "lewis6991/gitsigns.nvim",
		config = function ()
			require('gitsigns').setup()
			local wk = require("which-key")
			wk.register({g = { name = "Git"}})
			vim.api.nvim_set_keymap("", "<leader>gh", "<cmd>Gitsigns preview_hunk<cr>", {noremap = true, desc = "Show hunk"})
			vim.api.nvim_set_keymap("", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", {noremap = true, desc = "Reset hunk"})
			vim.api.nvim_set_keymap("", "<leader>gb", "<cmd>Gitsigns blame_line<cr>", {noremap = true, desc = "Git blame"})
		end,
	},
}
