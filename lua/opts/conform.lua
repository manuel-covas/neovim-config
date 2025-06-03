local function map(mode, l, r, opts)
  opts = opts or {}
  vim.keymap.set(mode, l, r, opts)
end

local format_disable = function()
  vim.b.disable_autoformat = true
end

local format_enable = function()
  vim.b.disable_autoformat = false
end

local global_format_disable = function()
  vim.g.disable_autoformat = true
end

local global_format_enable = function()
  vim.g.disable_autoformat = false
end

map("n", "<leader>fd", format_disable, { desc = "disable auto format" })
map("n", "<leader>fe", format_enable, { desc = "enable auto format" })
map("n", "<leader>fgd", global_format_disable, { desc = "global disable auto format" })
map("n", "<leader>fge", global_format_enable, { desc = "global enable auto format" })

return {
  format_on_save = function(bufnr)
    -- Disable with a global or buffer-local variable
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end
    return { timeout_ms = 500, lsp_format = "fallback" }
  end,
}
