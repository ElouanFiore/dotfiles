-- File tree conf
require("nvim-tree").setup({
	view = {
		mappings = { 
			list = {
				{ key = "<C-t>", action = "" },
			}
		}
	}
})

-- Status bar conf
require("feline-conf")

-- Indent marker setup
require("indent_blankline").setup()

-- Comment Plugin
require('Comment').setup()

-- Gitsigns conf
require('gitsigns').setup()
