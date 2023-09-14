return {
  -- add python to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "python",
        })
      end
    end,
  },
  -- correctly setup mason lsp extensions
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          -- "black",
          "pyright",
          -- "ruff",
        })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- make sure mason installs the server
      servers = {
        pyright = {},
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      if type(opts.sources) == "table" then
        vim.list_extend(opts.sources, {
          -- nls.builtins.diagnostics.flake8,
          -- nls.builtins.diagnostics.mypy,
          -- nls.builtins.diagnostics.pycodestyle,
          nls.builtins.diagnostics.ruff,
          -- nls.builtins.formatting.black,
          -- nls.builtins.formatting.isort,
          nls.builtins.formatting.ruff,
        })
      end
    end,
  },
}
