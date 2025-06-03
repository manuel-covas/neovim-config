local lsp = vim.lsp.buf

return {
  { "gra", function() lsp.code_action() end,    desc = "code action", },
  { "grd", function() lsp.definition() end,     desc = "go to definition", },
  { "grD", function() lsp.declaration() end,    desc = "go to declaration", },
  { 'grr', function() lsp.references() end,     desc = "show references", },
  { 'grs', function() lsp.signature_help() end, desc = "signature help", },
  { 'gri', function() lsp.implementation() end, desc = "go to implementation", },
  { 'grn', function() lsp.rename() end,         desc = "rename", },
}
