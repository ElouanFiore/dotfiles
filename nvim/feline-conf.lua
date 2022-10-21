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
	bg_name = "#0066cc",
	bg_mode = "#1F1F23",
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
	left_sep = { str = " ", hl = { bg = "bg_mode", }, },
	right_sep = {
		hl = {
			bg = "bg_mode",
			fg = "bg_name",
		},
		str = "slant_left",
	},
}

local file_info = {
	provider = "file_info",
	hl = {
		bg = "bg_name",
	},
	right_sep = {
		hl = {
			bg = "bg_mode",
			fg = "bg_name",
		},
		str = "slant_right",
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
		fg = "white",
	},
	right_sep = " ",
	left_sep = " ",
}

local git_diff_added = {
	provider = "git_diff_added",
	hl = {
		fg = "green",
	},
}

local git_diff_changed = {
	provider = "git_diff_changed",
	hl = {
		fg = "orange",
	},
}

local git_diff_removed = {
	provider = "git_diff_removed",
	hl = {
		fg = "red",
	},
}

local position = {
        provider = "position",
	hl = {
		style = "bold",
	},
}

local components = {
	active = {
		{vim_mode, file_info}, -- left
		{}, -- middle
		{git_diff_added, git_diff_changed, git_diff_removed, git_branch, position, line_percentage}, -- right
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
