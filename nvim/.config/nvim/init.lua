if vim.g.vscode then
    require("custom.remap")
else
    if vim.g.neovide == true then
        vim.o.guifont = "MartianMonoNerdFont-Medium:h14"
        vim.g.neovide_scale_factor = 0.9
        vim.g.neovide_transparency = 0.9
        vim.g.neovide_background_color = "#1a1b26"
        vim.g.neovide_cursor_animation_length = 0
        vim.g.neovide_cursor_trail_size = 0
        vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
    end
    require("custom")
end
