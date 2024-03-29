vim.opt.termguicolors = true
require('bufferline').setup({
    options = {
        themable = false,
        indicator = { style = 'icon' },
        tab_size = 20,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true
            }
        },
        show_buffer_close_icons = false,
        show_tab_indicators = false,
        enforce_regular_tabs = false,
        move_wraps_at_ends = false,
        separator_style = { '', '' }
    }
})
