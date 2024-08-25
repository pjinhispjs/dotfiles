local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins listed in .config/nvim/lua/plugins.lua
-- Load the lsp plugins from a separate folder.  I suspect they get loaded after
-- the inital set of plugins.  For some reason this is required or the LSP never
-- runs.
require("lazy").setup({ { import = "plugins" }, { import = "plugins.lsp" } })

vim.api.nvim_set_keymap("", "<leader>l", "<Cmd>Lazy<CR>", {noremap = true, silent = false, expr = false})
