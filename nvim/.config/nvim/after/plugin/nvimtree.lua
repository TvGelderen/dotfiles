vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require('nvim-tree').setup({
    filters = {
        git_ignored = false,
    },
})

vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>fit", ":NvimTreeFindFile<CR>")
