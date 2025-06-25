return {
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {"tokyonight-day", "tokyonight-night", "tokyonight-storm", "tokyonight-moon"}, -- Your list of installed colorschemes.
	livePreview = true, -- Apply theme while picking. Default to true.
      })
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = true,
    opts = function() return require("opts.nvim-tree") end,
    keys = require("keys.nvim-tree")
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "master",
    build = ":TSUpdate",
    config = function() require("config.treesitter") end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = function() return require("keys.which-key") end,
  },
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    opts = function() return require("opts.telescope") end,
    keys = function() return require("keys.telescope") end,
    ependencies = { "nvim-treesitter/nvim-treesitter" },
  },
  {
    "saghen/blink.cmp",
    version = "1.*",
    opts = function() return require("opts.blink-cmp") end,
  },
  {
    "neovim/nvim-lspconfig",
    keys = function() return require("keys.lspconfig") end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {}
      },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = function() return require("opts.conform") end,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = function() return require("opts.gitsigns") end,
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {},
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = function() return require("opts.lualine") end,
  },
}
