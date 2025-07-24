return {
  {
    "lewis6991/gitsigns.nvim",
    optional = true,
    opts = {
      current_line_blame_opts = {
        delay = 0,
      },
    },
  },
  {
    "sindrets/diffview.nvim",
    event = "VeryLazy",
  },
  -- {
  --   "ibhagwan/fzf-lua",
  --   keys = {
  --     { "<leader>sb", "<cmd>FzfLua lgrep_curbuf<cr>", desc = "Buffer (live grep)" },
  --   },
  -- },
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   keys = {
  --     -- {grep_open_files}     (boolean)         if true, restrict search to
  --     {
  --       "<leader>sB",
  --       -- LazyVim.pick("live_grep", { root = false, search_dirs = { vim.fn.expand("%:p") } }),
  --       function()
  --         require("telescope.builtin").live_grep({ search_dirs = { vim.fn.expand("%:p") } })
  --       end,
  --       desc = "Buffer (grep)",
  --     },
  --     -- { "<leader>sB", "<cmd>Telescope current_buffer_fuzzy_find fuzzy=false<cr>", desc = "Buffer (grep)" },
  --   },
  -- },
  {
    "folke/snacks.nvim",
    optional = true,
    opts = {
      picker = {
        hidden = true,
        ignored = true,
        sources = {
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}
