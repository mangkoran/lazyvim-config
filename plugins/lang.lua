return {
  {
    "pcolladosoto/tinygo.nvim",
    event = "VeryLazy",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "hcl",
        "just",
        -- "terraform",
        "htmldjango",
      },
    },
  },
  {
    "folke/ts-comments.nvim",
    opts = {
      lang = {
        just = "# %s",
      },
    },
  },

  { import = "plugins.lang.neorg" },
  { import = "plugins.lang.typst" },
  { import = "plugins.lang.web" },
}
