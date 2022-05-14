require'nvim-treesitter.configs'.setup {
    ensure_installed = {'json', 'lua', 'python', 'yaml'},
    sync_install = false,
    highlight = {
        enable = true
    }
}
