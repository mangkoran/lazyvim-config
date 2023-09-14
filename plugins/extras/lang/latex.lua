return {
  -- add latex to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "bibtex",
          "latex",
        })
      end
      -- if type(opts.ignore_install) == "table" then
      --   vim.list_extend(opts.ignore_install, {
      --     "latex", -- :h vimtex-faq-treesitter
      --   })
      -- end
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
                args = {
                  "-X",
                  "compile",
                  "%f",
                  "--synctex",
                  "--keep-logs",
                  "--keep-intermediates",
                  "-Z",
                  -- "shell-escape",
                  "shell-escape-cwd=.",
                  -- "shell-escape-cwd=/home/mangkoran/sch/sem-8/psm/report-new/",
                },
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
    keys = {
      { "<Leader>cc", "<Cmd>TexlabBuild<CR>", desc = "Texlab Build" },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { -- optional packages
      "LazyVim/LazyVim",
    },
    init = function()
      -- https://github.com/jose-elias-alvarez/null-ls.nvim/issues/1131#issuecomment-1457584752
      require("lazyvim.util").on_attach(function(client, buf)
        if client.name == "null-ls" then
          if
            not require("null-ls.generators").can_run(vim.bo[buf].filetype, require("null-ls.methods").lsp.FORMATTING)
          then
            vim.bo[buf].formatexpr = nil
          end
        end
      end)
    end,
    opts = function(_, opts)
      local nls = require("null-ls")
      if type(opts.sources) == "table" then
        vim.list_extend(opts.sources, {
          -- nls.builtins.diagnostics.proselint,
          nls.builtins.diagnostics.chktex,
          -- nls.builtins.diagnostics.vale,
        })
      end
    end,
  },
  -- {
  --   "lervag/vimtex",
  --   init = function()
  --     vim.api.nvim_create_autocmd("FileType", {
  --       pattern = {
  --         "tex",
  --         "latex",
  --       },
  --       callback = function()
  --         vim.opt_local.textwidth = 100
  --       end,
  --     })
  --
  --     vim.g.vimtex_view_method = "zathura"
  --     vim.g.vimtex_compiler_method = "tectonic"
  --     vim.g.vimtex_compiler_tectonic = {
  --       options = {
  --         "-X",
  --         "compile",
  --         -- "%f",
  --         "--synctex",
  --         "--keep-logs",
  --         "--keep-intermediates",
  --         "-Z",
  --         "shell-escape",
  --         -- "shell-escape-cwd=$PWD",
  --       },
  --     }
  --     vim.g.vimtex_subfile_start_local = true
  --   end,
  -- },
  -- {
  --   "preservim/vim-pencil",
  --   dependencies = { -- optional packages
  --     "hrsh7th/nvim-cmp",
  --   },
  -- init = function()
  --   vim.g["pencil#autoformat"] = 1
  --   vim.g["pencil#textwidth"] = 100
  --   vim.g["pencil#wrapModeDefault"] = "hard"
  --   vim.api.nvim_create_autocmd("FileType", {
  --     pattern = {
  --       "mkd",
  --       "markdown",
  --       "tex",
  --       "latex",
  --     },
  --     callback = function()
  --       vim.fn["pencil#init"]()
  --     end,
  --   })
  -- end,
  --   config = function()
  --     vim.g["pencil#autoformat"] = 1
  --     vim.g["pencil#textwidth"] = 100
  --     vim.g["pencil#wrapModeDefault"] = "hard"
  --     vim.fn["pencil#init"]({ wrap = "hard" })
  --   end,
  --   ft = {
  --     "mkd",
  --     "markdown",
  --     "tex",
  --     "latex",
  --   },
  -- },
  -- {
  --   "andrewferrier/wrapping.nvim",
  --   config = function()
  --     require("wrapping").setup()
  --   end,
  -- },
}
