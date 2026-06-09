-- General settings ----------------------------------------------
require("core.settings")

-- General keymaps ----------------------------------------------
require("core.keybinds")

require("core.lsp")
require("core.autocmds")

-- Plugins via lazy.nvim -----------------------------------------
require("plugin_manager")

-- lz options ---------------------------------------------------
local host = vim.fn.hostname()
if string.find(host, "LZ") then
	require("lzps.options")
end
-----------------------------------------------------------------

-- Godot support ------------------------------------------------
local paths_to_check = { "/", "/../" }
local is_godot_project = false
local godot_project_path = ""
local cwd = vim.fn.getcwd()

-- iterate over paths and check
for key, value in pairs(paths_to_check) do
	if vim.uv.fs_stat(cwd .. value .. "project.godot") then
		is_godot_project = true
		godot_project_path = cwd .. value
		break
	end
end

-- check if server is already running in godot project path
local is_server_running = vim.uv.fs_stat(godot_project_path .. "/server.pipe")
-- start server, if not already running
if is_godot_project and not is_server_running then
	vim.fn.serverstart(godot_project_path .. "/server.pipe")
end

-- Plugin Settings ----------------------------------------------
