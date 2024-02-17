return {
	"nvim-lualine/lualine.nvim",
	config = function ()
		require('lualine').setup {
			options = {
				disabled_filetypes = {'minimap', 'neo-tree', 'NvimTree', 'Tagbar'},
				icons_enabled = true,
				theme = 'auto',
				-- component_separators = { left = '', right = ''},
				component_separators = { left = '', right = ''},
				section_separators = { left = '', right = '' },
				lualine_c = {'filename'},
				lualine_x = {'location'},
				lualine_y = {},
				lualine_z = {}
			},
			-- tabline = {
				-- 	lualine_a = {'buffers'},
				-- 	lualine_b = {'branch'},
				-- 	lualine_c = {},
				-- 	lualine_x = {},
				-- 	lualine_y = {},
				-- 	lualine_z = {'tabs'}
				-- },
				extensions = { "neo-tree", "lazy"},
			}
	end,
}
