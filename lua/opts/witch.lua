return {
  dim_inactive = {
    enabled = true,
    level = 0.9,
    excluded = {
      filetypes = {
        NvimTree = true,
      },
      buftypes = {
        nofile = true,
        prompt = true,
        terminal = true,
      },
    },
  },
}
