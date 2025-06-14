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
