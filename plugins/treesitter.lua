return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "astro",
        "bash",
        "bibtex",
        "c",
        "cmake",
        "css",
        "fish",
        "gitignore",
        "go",
        "gomod",
        "html",
        "javascript",
        "json",
        -- "latex",
        "lua",
        "luadoc",
        "luap",
        "make",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "rust",
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
        "latex", -- :h vimtex-faq-treesitter
      },
    },
  },
  {
    "windwp/nvim-ts-autotag",
    dependencies = { -- optional packages
      "nvim-treesitter/nvim-treesitter",
    },
    -- init = function(_, opts)
    -- require("nvim-treesitter.configs").setup({
    --   autotag = {
    --     enable = true,
    --   },
    -- })
    -- end,
  },
}
