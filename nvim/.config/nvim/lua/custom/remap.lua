vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<C-j>", ":bprev<CR>")
vim.keymap.set("n", "<C-k>", ":bnext<CR>")
vim.keymap.set("n", "<C-q>", ":bdelete<CR>")
-- Closes buffer without closing window
vim.keymap.set("n", "<leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>")

vim.keymap.set("n", "<Tab>", "<C-w>w")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
