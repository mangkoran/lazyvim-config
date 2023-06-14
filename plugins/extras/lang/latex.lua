return {
  -- add latex to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "bibtex",
        })
      end
      if type(opts.ignore_install) == "table" then
        vim.list_extend(opts.ignore_install, {
          "latex", -- :h vimtex-faq-treesitter
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
          "texlab",
        })
      end
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      -- make sure mason installs the server
      servers = {
        texlab = {
          settings = {
            texlab = {
              auxDirectory = ".",
              bibtexFormatter = "texlab",
              build = {
                args = { "-X", "compile", "%f" },
                executable = "tectonic",
                forwardSearchAfter = false,
                onSave = false,
              },
              chktex = {
                onEdit = false,
                onOpenAndSave = false,
              },
              diagnosticsDelay = 300,
              formatterLineLength = 80,
              forwardSearch = {
                executable = "zathura",
                args = { "--synctex-forward", "%l:1:%f", "%p" },
              },
              latexFormatter = "latexindent",
              latexindent = {
                modifyLineBreaks = false,
              },
            },
          },
        },
      },
    },
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      if type(opts.sources) == "table" then
        vim.list_extend(opts.sources, {
          nls.builtins.diagnostics.proselint,
          nls.builtins.diagnostics.chktex,
          -- nls.builtins.diagnostics.vale,
        })
      end
    end,
  },

  {
    "lervag/vimtex",
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_method = "tectonic"
      vim.g.vimtex_compiler_tectonic = {
        options = { "-X", "compile" },
      }
      vim.g.vimtex_subfile_start_local = true
    end,
  },

  {
    "preservim/vim-pencil",
    init = function()
      vim.g["pencil#autoformat"] = 1
      vim.g["pencil#textwidth"] = 100
      -- vim.api.nvim_create_autocmd("FileType", {
      --   pattern = {
      --     "mkd",
      --     "markdown",
      --     "tex",
      --     "latex",
      --   },
      --   callback = function()
      --     vim.fn["pencil#init"]()
      --   end,
      -- })
    end,
    config = function()
      vim.fn["pencil#init"]()
    end,
    ft = {
      -- "mkd",
      -- "markdown",
      "tex",
      "latex",
    },
  },
}
