require("nvim-treesitter.configs").setup({
	ensure_installed = { "json", "lua", "python", "yaml", "go", "html" },
	sync_install = false,
	highlight = {
		enable = true,
	},
})
