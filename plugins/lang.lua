return {
  {
    "IndianBoy42/tree-sitter-just",
    opts = {},
  },
  {
    "pcolladosoto/tinygo.nvim",
    opts = {},
  },
  -- {
  --   "creativenull/efmls-configs-nvim",
  --   version = "v1.5.0",
  --   dependencies = { "neovim/nvim-lspconfig" },
  -- },
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     opts.ensure_installed = opts.ensure_installed or {}
  --     vim.list_extend(opts.ensure_installed, { "efm" })
  --   end,
  -- },

  { import = "plugins.lang.neorg" },
  { import = "plugins.lang.typst" },
  { import = "plugins.lang.web" },
}
