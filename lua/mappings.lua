local map = vim.keymap.set

map({ "n" }, "<leader>bn", ":bnext<cr>", { desc = "Buffer Next" })
map({ "n" }, "<leader>bp", ":bnext<cr>", { desc = "Buffer Prev" })
map({ "n" }, "<leader>bx", ":bdelete<cr>", { desc = "Buffer Close" })
