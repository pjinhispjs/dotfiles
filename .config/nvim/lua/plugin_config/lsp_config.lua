require("mason").setup()

-- See below for a list of lsp servers
-- https://github.com/williamboman/mason-lspconfig.nvim
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls", -- lua
		"clangd", -- C/C++
		"bashls", -- bash
		"pylsp", -- python
		-- php
		-- javascript?
		-- "openscad_lsp", -- openscad
	}
})


local on_attach = function(_, _)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.inplementation, {})
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
	vim.keymap.set('n', '<leader>a', require("nvim-navbuddy").open(), {})
end

require'cmp'.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
	on_attach = on_attach,
	-- capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
}


require("lspconfig").intelephense.setup {
}

require("lspconfig").clangd.setup {
	on_attach = on_attach,
	-- capabilities = capabilities,
}

require("lspconfig").bashls.setup {
	-- on_attach = on_attach,
	-- capabilities = require("lspconfig").bashls.default_capabilities(),
}

require("lspconfig").pylsp.setup {
	-- on_attach = attach_fn,
	-- capabilities = require('pylsp').default_capabilities(),
	settings = {
		pylsp = {
			plugins = {
				pylint = {
					-- enabled = false,
					ignore = {'E501', 'E231', 'E221', 'E241', 'E266'},
				},
				pycodestyle = {
					-- enabled = false,
					ignore = {'E501', 'E231', 'E221', 'E241', 'E266'},
				}
			}
		}
	}
}
