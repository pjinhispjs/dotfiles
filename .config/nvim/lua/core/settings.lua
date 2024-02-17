-- Reload the configuration
function _G.ReloadConfig()
	for name,_ in pairs(package.loaded) do
		if name:match('^user') and not name:match('nvim-tree') then
			package.loaded[name] = nil
		end
	end

	dofile(vim.env.MYVIMRC)
	vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end

-- Set colors
vim.opt.termguicolors = true

-- use a decent fallback in case someting goes wrong with the plugin
vim.cmd.colorscheme("habamax")
-- https://github.com/sainnhe/everforest
-- vim.cmd.colorscheme("everforest")

vim.opt.backspace = "indent,eol,start"
vim.opt.ruler = true
vim.opt.number = true
vim.opt.relativenumber = true

-- show whitespace characters
vim.opt.listchars = {
	tab = '<=>',
	space = '·',
}
vim.opt.list = true

vim.opt.cursorline = true
vim.opt.colorcolumn="80"

-- set tabs to 4 space
vim.opt.tabstop=4
vim.opt.shiftwidth=4

-- no swap
vim.opt.swapfile = false
vim.opt.updatetime = 50

-- smarter indenting
vim.opt.cindent = true

-- set window title to match the filename
vim.opt.title = true

-- I prefer this split direction
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Better scrolling
vim.opt.scrolloff = 4

-- Searches are case sensitive except when using capital letters
vim.opt.ignorecase = true
vim.opt.smartcase  = true
