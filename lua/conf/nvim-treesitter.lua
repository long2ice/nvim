require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"json",
		"lua",
		"python",
		"yaml",
		"go",
		"html",
		"typescript",
		"tsx",
		"vue",
		"toml",
		"css",
		"javascript",
		"make",
		"markdown",
		"sql",
	},
	sync_install = false,
	highlight = {
		enable = true,
	},
})
