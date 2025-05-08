return {
    {
        'sainnhe/sonokai',
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.sonokai_style = 'shusia'
            vim.g.sonokai_enable_italic = true
        end
    },
    {
        "navarasu/onedark.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            local onedark = require('onedark')
            onedark.setup {
                style = 'deep'
            }
            onedark.load()
        end
    }
}
