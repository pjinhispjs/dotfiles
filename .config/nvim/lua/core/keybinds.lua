-- Helper functions for keybinds that I don't use at the momment
--
-- function Map(mode, shortcut, command)
-- 	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
-- end
--
-- function Nmap(shortcut, command)
-- 	Map('n', shortcut, command)
-- end
--
-- function Imap(shortcut, command)
-- 	Map('i', shortcut, command)
-- end
--

-- trying space as the leader key
vim.g.mapleader = " "

-- easy window movement
vim.api.nvim_set_keymap("", "<C-h>", "<C-w>h", { noremap = true, desc = "Select window left" })
vim.api.nvim_set_keymap("", "<C-j>", "<C-w>j", { noremap = true, desc = "Select window down" })
vim.api.nvim_set_keymap("", "<C-k>", "<C-w>k", { noremap = true, desc = "Select window up" })
vim.api.nvim_set_keymap("", "<C-l>", "<C-w>l", { noremap = true, desc = "Select window right" })

-- toggle relative line numbers
vim.api.nvim_set_keymap(
	"n",
	"<leader>nn",
	"<cmd>lua vim.opt.number = not(vim.opt.number:get())<cr>",
	{ desc = "Toggle line numbers" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>nr",
	"<cmd>lua vim.opt.relativenumber = not(vim.opt.relativenumber:get())<cr>",
	{ desc = "Toggle relative numbers" }
)

-- toggle spelling
vim.api.nvim_set_keymap("n", "<leader>p", "<cmd>set spell!<cr>", { desc = "Toggle spell checker" })

-- clear search
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>")

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- dragon-drop the current file
vim.keymap.set("n", "<leader>fy", "<cmd>! dragon-drop --and-exit %<cr>")

-- Shamelessly stolen from ThePrimeagen --
-- move lines of text like Sublime's ctrl+shift+arrowkeys
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep the cursor in the same place when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- keep the cursor in the middle when paging
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- paste over items without changing the buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- find and replace the word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- End shamelessly stolen from ThePrimeagen --
