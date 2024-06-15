vim.filetype.add({
  extension = {
    njk = "nunjucks",
  },
})

vim.treesitter.language.register("htmldjango", "nunjucks") -- the someft filetype will use the python parser and queries.

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
        "htmldjango",
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
        "djlint",
        "css-lsp",
        "html-lsp",
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
      setup = {
        html = function(_, opts)
          local html = require("lspconfig.server_configurations.html")
          opts.filetypes = opts.filetypes or {}
          vim.list_extend(opts.filetypes, html.default_config.filetypes)
          vim.list_extend(opts.filetypes, { "nunjucks" })
        end,
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        nunjucks = { "djlint" },
      },
      formatters = {
        djlint = {
          args = function(_, ctx)
            -- use tabstop of current buffer which is based on .editorconfig
            local indent = vim.bo[ctx.buf].tabstop or 4
            return { "-", "--reformat", "--indent", indent }
          end,
        },
      },
    },
  },
}
