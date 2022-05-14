require("plugins")
require("conf/setup")
require("lsp/setup")

vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd([[
  augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
  augroup END
]])

vim.cmd([[colorscheme dracula]])

vim.wo.number = true
vim.opt.termguicolors = true
vim.opt.splitright = true
