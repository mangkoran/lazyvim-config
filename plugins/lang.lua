return {
  {
    "pcolladosoto/tinygo.nvim",
    event = "VeryLazy",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "hcl",
        "just",
        "terraform",
        "htmldjango",
      })
    end,
  },
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     opts.ensure_installed = opts.ensure_installed or {}
  --     vim.list_extend(opts.ensure_installed, { "djlint" })
  --   end,
  -- },
  -- {
  --   "neovim/nvim-lspconfig",
  --   -- opts = {
  --   --   servers = {
  --   --     html = {
  --   --       filetypes = { "htmldjango" },
  --   --     },
  --   --   },
  --   -- },
  --   opts = function(_, opts)
  --     -- opts.servers.html.filetypes = opts.servers.html.filetypes or {}
  --     -- vim.list_extend(opts.servers.html.filetypes, { "htmldjango" })
  --     table.insert(opts.servers.html.filetypes, "htmldjango")
  --   end,
  -- },

  { import = "plugins.lang.neorg" },
  { import = "plugins.lang.typst" },
  { import = "plugins.lang.web" },
}
