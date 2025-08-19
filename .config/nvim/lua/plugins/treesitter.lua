return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "rust" },
			auto_install = true,
		},
		config = function (_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	}
}
