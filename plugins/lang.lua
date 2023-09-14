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
        html = {},
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
        },
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "astro",
          "css",
          "fish",
          "gitignore",
          "make",
          "scss",
          "sql",
          "svelte",
          -- "bash",
          -- "c",
          -- "html",
          -- "javascript",
          -- "json",
          -- "lua",
          -- "luadoc",
          -- "luap",
          -- "markdown",
          -- "markdown_inline",
          -- "python",
          -- "query",
          -- "regex",
          -- "tsx",
          -- "typescript",
          -- "vim",
          -- "vimdoc",
          -- "yaml",
        })
      end
    end,
  },

  -- built-in LazyVim extras
  { import = "lazyvim.plugins.extras.lang.go" },
  { import = "lazyvim.plugins.extras.lang.rust" },
  { import = "lazyvim.plugins.extras.lang.clangd" },
  { import = "lazyvim.plugins.extras.lang.python" },

  -- custom language specific extension modules
  -- { import = "plugins.extras.lang.go" },
  { import = "plugins.extras.lang.latex" },
  -- { import = "plugins.extras.lang.python" },
  { import = "plugins.extras.lang.typst" },
  { import = "plugins.extras.lang.markdown" },
}
