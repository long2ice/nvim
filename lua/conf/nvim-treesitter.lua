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
	auto_install = true,
	ignore_install = {},
	sync_install = false,
	highlight = {
		enable = true,
	},
})
