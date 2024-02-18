local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { 'tsserver', 'eslint', 'volar', 'cssls', 'tailwindcss', 'rust_analyzer', 'gopls', 'templ', 'html', 'jsonls', 'yamlls' },
  handlers = {
    lsp_zero.default_setup,
  },
})

vim.keymap.set("n", "<leader>fm", function() vim.lsp.buf.format() end)
vim.keymap.set("n", "<leader>lr", ":LspRestart<CR>")
