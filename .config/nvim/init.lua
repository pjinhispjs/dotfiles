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

-- Plugin Settings ----------------------------------------------
