-- https://github.com/nvim-telescope/telescope.nvim
return {
	{ 'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function ()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fg', function ()
				builtin.grep_string({search = ''});
			end, {})
			vim.keymap.set('n', '<leader>b', builtin.buffers, {})
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
		end
	},
}
