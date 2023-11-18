-- -- File tree conf
require("nvim-tree").setup()

-- Status bar conf
require('lualine').setup({
	options = {
		theme = 'onedark',
		disabled_filetypes = {'NvimTree', 'vundle'},
	}
})

-- Indent marker setup
require("ibl").setup()

-- Comment Plugin
require('Comment').setup()

-- Gitsigns conf
require('gitsigns').setup()
