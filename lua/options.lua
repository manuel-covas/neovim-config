local o = vim.o

o.wrap = false
o.shell = "bash"
o.mousemodel = "extend"
o.winborder = "rounded"
o.expandtab = true   -- expand tab input with spaces characters
o.smartindent = true -- syntax aware indentations for newline inserts
o.tabstop = 2        -- num of space characters per tab
o.shiftwidth = 2     -- spaces per indentation level
o.termguicolors = true
o.number = true

vim.g.lazygit_floating_window_use_plenary = 1

vim.diagnostic.config({virtual_text = true})

vim.lsp.config('pyright', {
  settings = {
    ['python'] = {
        analysis = {
          diagnosticMode = "workspace",
        }
    },
  },
})
