-- Settings for when PJ is at work
vim.opt.expandtab = true
vim.opt.colorcolumn = "72,80,88"

-- set tabs to 4 space
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- vim.api.nvim_create_autocmd("Filetype", "cpp setlocal commentstring=// %s")
function LZCopyright()
	-- if there is a shebang, offset the notice by 1 line
	local first_line = 0
	local top = vim.api.nvim_buf_get_lines(0, 0, 1, true)
	local i = string.find(top[1], "#!")
	if i ~= nil then
		first_line = 1
	end

	-- check for a previous copyright notice
	local replace = 0
	top = vim.api.nvim_buf_get_lines(0, first_line, first_line + 1, true)
	i = string.find(top[1], "Copyright")
	if i ~= nil then
		replace = 1
	end
	local year = os.date("%Y")

	local comment = vim.bo.commentstring
	print(vim.bo.filetype)
	-- fix for C/C++ using /**/ comments
	if vim.bo.filetype == "cpp" or vim.bo.filetype == "c" then
		comment = "// %s"
	end
	local copyright = { string.format(comment, "Copyright " .. year .. " LayerZero Power Systems, LLC") }
	vim.api.nvim_buf_set_lines(0, first_line, first_line + replace, true, copyright)
end
