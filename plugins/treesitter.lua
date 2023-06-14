return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    opts = {
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "astro",
        "bash",
        "c",
        "cmake",
        "css",
        "fish",
        "gitignore",
        "html",
        "javascript",
        "json",
        "lua",
        "luadoc",
        "luap",
        "make",
        -- "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "scss",
        "sql",
        "svelte",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      ignore_install = {
      },
    },
  },
  -- {
  --   "windwp/nvim-ts-autotag",
  --   dependencies = { -- optional packages
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  --   opts = {},
  -- init = function(_, opts)
  -- require("nvim-treesitter.configs").setup({
  --   autotag = {
  --     enable = true,
  --   },
  -- })
  -- end,
  -- },
}
