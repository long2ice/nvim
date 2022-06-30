local use = require("packer").use
require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use("williamboman/nvim-lsp-installer")
	use("neovim/nvim-lspconfig")
	use("lukas-reineke/indent-blankline.nvim")
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
	use("Pocco81/AutoSave.nvim")
	use("b0o/schemastore.nvim")
	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons" },
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
	use({ "turbio/bracey.vim", run = "npm install --prefix server" })
	use("ahmedkhalf/project.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("simrat39/symbols-outline.nvim")
	use({
		"junegunn/fzf",
		run = function()
			vim.fn["fzf#install"]()
		end,
	})
	use("junegunn/fzf.vim")
end)
