local o = vim.o
local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
local opts = themes.get_dropdown()

local launch = function(f)
  local b = o.winborder
  o.winborder = "none"
  f(opts)
  o.winborder = b
end

return {
  { '<leader>ff', function() launch(builtin.find_files) end,  mode = "n", desc = 'Telescope Find Files' },
  { '<leader>fw', function() launch(builtin.live_grep) end,   mode = "n", desc = 'Telescope Live Grep' },
  { '<leader>fb', function() launch(builtin.buffers) end,     mode = "n", desc = 'Telescope Buffers' },
  { '<leader>fc', function() launch(builtin.git_commits) end, mode = "n", desc = 'Telescope Git Commits' },
  { '<leader>fh', function() launch(builtin.help_tag) end,    mode = "n", desc = 'Telescope Help Tags' },
}
