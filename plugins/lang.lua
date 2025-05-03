return {
  {
    "pcolladosoto/tinygo.nvim",
    event = "VeryLazy",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- "hcl",
        "just",
        -- "terraform",
        "htmldjango",
        "hurl",
      },
    },
  },
  -- {
  --   "folke/ts-comments.nvim",
  --   opts = {
  --     lang = {
  --       just = "# %s",
  --     },
  --   },
  -- },
  {
    "iamcco/markdown-preview.nvim",
    init = function()
      vim.g.mkdp_browser = "/usr/bin/wslview"
    end,
  },

  -- { import = "plugins.lang.neorg" },
  { import = "plugins.lang.typst" },
  { import = "plugins.lang.web" },
}
