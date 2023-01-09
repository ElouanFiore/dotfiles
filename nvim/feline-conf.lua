local vi_mode_colors = {
	COMMAND = "aqua",
	NORMAL = "green",
	OP = "green",
	LINES = "yellow",
	VISUAL = "yellow",
	BLOCK = "yellow",
	REPLACE = "orange",
	INSERT = "red",
}

local theme = {
	bg_mode = "#1F1F23",
	bg_name = "#0066cc",
	bg_git = "#0066cc",
}

local vim_mode = {
	provider = {
		name = "vi_mode",
		opts = {
			show_mode_name = true,
		},
	},
	hl = function()
		return {
			fg = require("feline.providers.vi_mode").get_mode_color(),
			bg = "bg_mode",
			style = "bold",
		}
	end,
	icon = "",
	left_sep = {
			str = " ",
			hl = {
				bg = "bg_mode",
			},
	},
	right_sep = {
		{
			str = " ",
			hl = {
				bg = "bg_mode",
			},
		},
		{
			str = "slant_left",
			hl = {
				bg = "bg_mode",
				fg = "bg_name",
			},
		},
	},
}

local file_info = {
	provider = "file_info",
	hl = {
		bg = "bg_name",
	},
	left_sep = {
		str = " ",
		hl = {
			bg = "bg_name",
		},
	},
	right_sep = {
		{
			str = " ",
			hl = {
				bg = "bg_name",
			},
		},
		{
			str = "slant_right",
			hl = {
				bg = "bg_mode",
				fg = "bg_name",
			},
		},
	},
}

local line_percentage = {
	provider = "line_percentage",
	hl = {
		style = "bold",
	},
	right_sep = " ",
	left_sep = " ",
}

local git_branch = {
	provider = "git_branch",
	hl = {
		bg = "bg_git",
	},
	left_sep = {
		{
			str = "slant_left_2",
			hl = {
				bg = "bg_mode",
				fg = "bg_git",
			},
		},
		{
			str = " ",
			hl = {
				bg = "bg_git",
			},
		},
	},
}

local git_diff_added = {
	provider = "git_diff_added",
	hl = {
		fg = "green",
		bg = "bg_git",
	},
}

local git_diff_changed = {
	provider = "git_diff_changed",
	hl = {
		fg = "orange",
		bg = "bg_git",
	},
}

local git_diff_removed = {
	provider = "git_diff_removed",
	hl = {
		fg = "red",
		bg = "bg_git",
	},
}

local position = {
        provider = "position",
	hl = {
		style = "bold",
	},
	left_sep = {
		{
			str = " ",
			hl = {
				bg = "bg_git",
			},
		},
		{
			str = "slant_right_2",
			hl = {
				bg = "bg_mode",
				fg = "bg_git",
			},
		},
		{
			str = " ",
			hl = {
				bg = "bg_mode",
			},
		},
	},
}

local components = {
	active = {
		{vim_mode, file_info}, -- left
		{}, -- middle
		{git_branch, git_diff_added, git_diff_changed, git_diff_removed, position, line_percentage}, -- right
	},
	inactive = {
		{file_info}, -- left
		{}, -- middle
		{}, -- right
	},
}

require("feline").setup({
	components = components,
	vi_mode_colors = vi_mode_colors,
	theme = theme,
})

-- require("feline").setup()
