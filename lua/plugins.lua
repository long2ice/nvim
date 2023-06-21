local use = require("packer").use

require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use("williamboman/nvim-lsp-installer")
	use("neovim/nvim-lspconfig")
	use("numToStr/Comment.nvim")
	use("majutsushi/tagbar")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")
	use("rafamadriz/friendly-snippets")
	use("onsails/lspkind-nvim")
	use("sbdchd/neoformat")
	use("Pocco81/auto-save.nvim")
	use("b0o/schemastore.nvim")
	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
	})
	use("Mofiqul/dracula.nvim")
	use("nvim-lualine/lualine.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("ellisonleao/glow.nvim")
	use("akinsho/toggleterm.nvim")
	use("rmagatti/auto-session")
	use("windwp/nvim-autopairs")
	use("ethanholz/nvim-lastplace")
	use("akinsho/bufferline.nvim")
	use("airblade/vim-gitgutter")
	use("RRethy/vim-illuminate")
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use({
		"turbio/bracey.vim",
		run = "npm install --prefix server",
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-file-browser.nvim" })
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "make",
	})
	use("nvim-telescope/telescope-project.nvim")
	use("simrat39/symbols-outline.nvim")
	use({
		"junegunn/fzf",
		run = function()
			vim.fn["fzf#install"]()
		end,
	})
	use("junegunn/fzf.vim")
	use("isobit/vim-caddyfile")
	use("dstein64/vim-startuptime")
	use("folke/trouble.nvim")
	use("j-hui/fidget.nvim")
	use("github/copilot.vim")
	use("lukas-reineke/indent-blankline.nvim")
end)
