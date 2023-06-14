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
        ansiblels = {},
        astro = {},
        ccls = {},
        html = {},
        pyright = {},
        sqlls = {},
        svelte = {},
        terraformls = {},
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
          nls.builtins.formatting.shfmt,
          nls.builtins.formatting.stylua,
          -- nls.builtins.diagnostics.flake8,
        },
      }
    end,
  },

  -- custom language specific extension modules
  { import = "plugins.extras.lang.rust" },
  { import = "plugins.extras.lang.golang" },
  { import = "plugins.extras.lang.latex" },
}
