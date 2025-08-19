return {
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function() 
			require("nvim-tree").setup {}
		end,
	},
}
