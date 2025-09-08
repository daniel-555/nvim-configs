vim.keymap.set("n", "<leader>fd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

vim.keymap.set("v", "<A-J>", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "<A-K>", ":m '<-2<cr>gv=gv")
vim.keymap.set("n", "<A-J>", ":m +1<cr>V=")
vim.keymap.set("n", "<A-K>", ":m -2<cr>V=")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")

vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p")

vim.api.nvim_create_autocmd(
    "LspAttach",
    {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
            vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc" -- Enable completion triggered by <c-x><c-o>

            -- Buffer local mappings
            -- See `:help vim.lsp.*` for documentation on any of the below functions
            local opts = { buffer = ev.buf }
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            vim.keymap.set({ 'n', 'v' }, '<leader>fm', vim.lsp.buf.format, opts)
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
            vim.keymap.set('n', 'go', vim.lsp.buf.type_definition, opts)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
            vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, opts)
            vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
            vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
            vim.keymap.set('n', '[d', vim.diagnostic.goto_next, opts)
            vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, opts)
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
            vim.keymap.set('n', '<F4>', vim.lsp.buf.code_action, opts)
        end
    }
)
