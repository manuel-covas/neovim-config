local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
local opts = themes.get_dropdown({ border = false })

return {
  { '<leader>ff', function() builtin.find_files(opts) end,  mode = "n", desc = 'Telescope Find Files' },
  { '<leader>fg', function() builtin.live_grep(opts) end,   mode = "n", desc = 'Telescope Live Grep' },
  { '<leader>fb', function() builtin.buffers(opts) end,     mode = "n", desc = 'Telescope Buffers' },
  { '<leader>fc', function() builtin.git_commits(opts) end, mode = "n", desc = 'Telescope Git Commits' },
  { '<leader>fh', function() builtin.help_tags(opts) end,   mode = "n", desc = 'Telescope Help Tags' },
}
