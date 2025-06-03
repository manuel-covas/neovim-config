return {
  on_attach = function(bufnr)
    local gitsigns = require "gitsigns"

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map("n", "]c", function()
      if vim.wo.diff then
        vim.cmd.normal { "]c", bang = true }
      else
        gitsigns.nav_hunk "next"
      end
    end, { desc = "next hunk" })

    map("n", "[c", function()
      if vim.wo.diff then
        vim.cmd.normal { "[c", bang = true }
      else
        gitsigns.nav_hunk "prev"
      end
    end, { desc = "previous hunk" })

    -- Actions
    map("n", "<leader>ghs", gitsigns.stage_hunk, { desc = "stage hunk" })
    map("n", "<leader>ghr", gitsigns.reset_hunk, { desc = "reset hunk" })
    map("v", "<leader>ghs", function()
      gitsigns.stage_hunk { vim.fn.line ".", vim.fn.line "v" }
    end, { desc = "stage hunk" })
    map("v", "<leader>ghr", function()
      gitsigns.reset_hunk { vim.fn.line ".", vim.fn.line "v" }
    end, { desc = "reset hunk" })
    map("n", "<leader>ghS", gitsigns.stage_buffer, { desc = "stage buffer" })
    map("n", "<leader>ghu", gitsigns.undo_stage_hunk, { desc = "undo stage hunk" })
    map("n", "<leader>ghR", gitsigns.reset_buffer, { desc = "reset buffer" })
    map("n", "<leader>ghp", gitsigns.preview_hunk, { desc = "preview hunk" })
    map("n", "<leader>ghb", function()
      gitsigns.blame_line { full = true }
    end, { desc = "blame line" })
    map("n", "<leader>gtb", gitsigns.toggle_current_line_blame, { desc = "toggle current line blame" })
    map("n", "<leader>ghd", gitsigns.diffthis, { desc = "diff this" })
    map("n", "<leader>ghD", function()
      gitsigns.diffthis "~"
    end, { desc = "diff this" })
    map("n", "<leader>gtd", gitsigns.toggle_deleted, { desc = "toggle deleted" })

    -- Text object
    map({ "o", "x" }, "gih", ":<C-U>Gitsigns select_hunk<CR>")
  end,
}
