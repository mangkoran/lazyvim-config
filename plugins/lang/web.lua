return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "css",
        "html",
        "astro",
        "svelte",
        "javascript",
        "typescript",
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "biome",
        "css-lsp",
        "html-lsp",
        "prettierd",
        "astro-language-server",
        "svelte-language-server",
        "typescript-language-server",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        astro = {},
        cssls = {},
        html = {
          init_options = {
            provideFormatter = false,
          },
        },
        svelte = {},
        tsserver = {},
      },
    },
  },
}
