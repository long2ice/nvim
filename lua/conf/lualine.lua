require("lualine").setup({
	options = {
		theme = "dracula-nvim",
	},
	sections = { lualine_c = { require("auto-session.lib").current_session_name } },
})
