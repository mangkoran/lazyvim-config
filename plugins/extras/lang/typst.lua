return {
  -- add latex to treesitter
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = function(_, opts)
  --     if type(opts.ensure_installed) == "table" then
  --       vim.list_extend(opts.ensure_installed, {
  --         "bibtex",
  --         "latex",
  --       })
  --     end
  --     -- if type(opts.ignore_install) == "table" then
  --     --   vim.list_extend(opts.ignore_install, {
  --     --     "latex", -- :h vimtex-faq-treesitter
  --     --   })
  --     -- end
  --   end,
  -- },
  -- correctly setup mason lsp extensions
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "typst-lsp",
        })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- make sure mason installs the server
      servers = {
        typst_lsp = {},
      },
    },
  },
}
