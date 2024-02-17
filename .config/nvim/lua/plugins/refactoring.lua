-- https://github.com/ThePrimeagen/refactoring.nvim
return {
	{ "ThePrimeagen/refactoring.nvim",
		dependencies = {
			{"nvim-lua/plenary.nvim"},
			{"nvim-treesitter/nvim-treesitter"},
		},
		config = function ()
			-- load refactoring Telescope extension
			require("telescope").load_extension("refactoring")


			-- Remaps for the refactoring operations currently offered by the plugin
			local opts = {noremap = true, silent = true, expr = false}
			vim.api.nvim_set_keymap("v", "<leader>re", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], opts)
			vim.api.nvim_set_keymap("v", "<leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], opts)
			vim.api.nvim_set_keymap("v", "<leader>rv", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]], opts)
			vim.api.nvim_set_keymap("v", "<leader>ri", [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], opts)

			-- Extract block doesn't need visual mode
			vim.api.nvim_set_keymap("n", "<leader>rb", [[ <Cmd>lua require('refactoring').refactor('Extract Block')<CR>]], opts)
			vim.api.nvim_set_keymap("n", "<leader>rbf", [[ <Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>]], opts)

			-- Inline variable can also pick up the identifier currently under the cursor without visual mode
			vim.api.nvim_set_keymap("n", "<leader>ri", [[ <Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], opts)
			-- load refactoring Telescope extension
			require("telescope").load_extension("refactoring")

			-- remap to open the Telescope refactoring menu in visual mode
			vim.api.nvim_set_keymap(
				"v",
				"<leader>rr",
				"<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
				{ noremap = true }
			)

		end,
		-- keys = {
			-- -- Remaps for the refactoring operations currently offered by the plugin
			-- {"<leader>re", function () require('refactoring').refactor('Extract Function') end, mode="v", desc = "Extract function" },
			-- {"<leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], "v",  {noremap = true, silent = true, expr = false}},
			-- {"<leader>rv", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]], "v",  {noremap = true, silent = true, expr = false}},
			-- {"<leader>ri", [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], "v",  {noremap = true, silent = true, expr = false}},
			-- -- Extract block doesn't need visual mode
			-- {"<leader>rb", [[ <Cmd>lua require('refactoring').refactor('Extract Block')<CR>]], "n",  {noremap = true, silent = true, expr = false}},
			-- {"<leader>rbf", [[ <Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>]], "n",  {noremap = true, silent = true, expr = false}},
			-- -- Inline variable can also pick up the identifier currently under the cursor without visual mode
			-- {"<leader>ri", [[ <Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], "n",  {noremap = true, silent = true, expr = false}},
		-- }
	},

}
