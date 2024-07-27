local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"tsserver",
		"eslint",
		"volar",
		"cssls",
		"tailwindcss",
		"gopls",
		"templ",
		"html",
		"jsonls",
		"yamlls",
		"svelte",
		"emmet_ls",
	},
	handlers = {
		lsp_zero.default_setup,
		cssls = function()
			css = {
				validate = true,
				lint = {
					unknownAtRules = "ignore",
				},
			}
		end,
		emmet_ls = function()
			filetypes = {
				"css",
				"sass",
				"scss",
				"html",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"svelte",
			}
		end,
	},
})

local null_ls = require("null-ls")
local builtins = null_ls.builtins
null_ls.setup({
	sources = {
		builtins.formatting.stylua,
		builtins.formatting.prettierd,
		require("none-ls.diagnostics.eslint_d"),
	},
	debug = true,
})

vim.keymap.set("n", "<leader>lr", ":LspRestart<CR>")
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
