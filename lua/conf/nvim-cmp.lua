local lspkind = require("lspkind")
local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	sources = {
		{
			name = "copilot",
		},
		{
			name = "nvim_lsp",
		},
		{
			name = "vsnip",
		},
		{
			name = "buffer",
		},
		{
			name = "path",
		},
	},
	mapping = require("keybindings").cmp(cmp),
	formatting = {
		format = lspkind.cmp_format({
			with_text = true,
			maxwidth = 50,
			before = function(entry, vim_item)
				vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
				return vim_item
			end,
		}),
	},
})

cmp.setup.cmdline("/", {
	sources = { {
		name = "buffer",
	} },
})

cmp.setup.cmdline(":", {
	sources = cmp.config.sources({ {
		name = "path",
	} }, { {
		name = "cmdline",
	} }),
})
