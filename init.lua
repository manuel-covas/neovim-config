require("options")
require("config.lazy")
require("mappings")

local ok, _ = pcall(vim.cmd, 'colorscheme moonbow')
if not ok then
  vim.cmd 'colorscheme default' -- if the above fails, then use default
end
