local map = vim.keymap.set

-- file ops
map({ "n" }, "<C-s>", "<cmd>w<CR>", { desc = "Save File" })

-- buffer ops
map({ "n" }, "<leader>bb", "<cmd>enew<CR>", { desc = "Buffer New" })
map({ "n" }, "<leader>bn", "<cmd>bnext<cr>", { desc = "Buffer Next" })
map({ "n" }, "<leader>bp", "<cmd>bnext<cr>", { desc = "Buffer Prev" })
map({ "n" }, "<leader>bx", "<cmd>bp | sp | bn | bd<cr>", { desc = "Buffer Close" })
map({ "n" }, "<tab>", "<cmd>bnext<cr>", { desc = "Buffer Next" })
map({ "n" }, "<S-tab>", "<cmd>bprev<cr>", { desc = "Buffer Prev" })

-- search
map({ "n" }, "<Esc>", "<cmd>noh<cr>", { desc = "Clear Highlight" })
