require("tokyonight").setup({
	style = "night",
	transparent = false,
	terminal_colors = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},

		sidebars = "dark",
		floats = "dark",
	},
	sidebars = { "qf", "help", "nvim-tree", "undotree", "packer" },
	hide_inactive_statusline = false,
	dim_inactive = true,
	lualine_bold = false,

	on_colors = function(colors) end,

	on_highlights = function(highlights, colors) end,
})

vim.cmd.colorscheme("tokyonight")
