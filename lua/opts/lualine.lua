-- local left = ''
-- local right = ''
local left = ''
local right = ''

return {
  options = {
    component_separators = '',
    section_separators = { left = left, right = right },
    globalstatus = true,
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = left }, right_padding = 2 } },
    lualine_b = { 'branch', 'diagnostics' },
    lualine_c = { { 'filename', file_status = true, path = 1 } },
    lualine_x = { 'lsp_status' },
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = right }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
