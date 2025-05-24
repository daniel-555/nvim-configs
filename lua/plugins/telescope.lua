return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        pickers = {
            live_grep = {
                glob_pattern = "!**/.git/*",
                additional_args = { "--hidden" },
            },
            find_files = {
                find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" }
            }
        }
    }
}
