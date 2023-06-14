return {
  {
    "neovim/nvim-lspconfig",
    -- https://www.lazyvim.org/plugins/lsp#%EF%B8%8F-customizing-lsp-keymaps
    -- init = function()
    --   local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- keys[#keys + 1] = { "K", "<cmd>Lspsaga hover_doc<cr>" }
    -- vim.filetype.add({
    --   extension = {
    --     ["ansible.yaml"] = "yaml.ansible",
    --   },
    --   pattern = {
    --     [".*/tasks/.*.yaml"] = "yaml.ansible",
    --   },
    -- })
    -- end,
    -- opts will be merged with the parent spec
    opts = {
      -- add LSP servers here
      servers = {
        gopls = {},
        ansiblels = {},
        astro = {},
        ccls = {},
        golangci_lint_ls = {},
        html = {},
        pyright = {},
        -- rust_analyzer = {},
        sqlls = {},
        svelte = {},
        terraformls = {},
        -- texlab = {},
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
        tsserver = {},
        yamlls = {
          settings = {
            yaml = {
              keyOrdering = false,
            },
          },
        },
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          nls.builtins.formatting.fish_indent,
          nls.builtins.diagnostics.fish,
          nls.builtins.formatting.stylua,
          nls.builtins.formatting.shfmt,
          -- nls.builtins.diagnostics.flake8,
          nls.builtins.diagnostics.proselint,
          nls.builtins.diagnostics.chktex,
          -- nls.builtins.diagnostics.vale,
        },
      }
    end,
  },
}
