require("telescope").setup({
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
		projects = {},
	},
})
require("telescope").load_extension("projects")
require("telescope").load_extension("fzf")
