return {
  -- add golang to treesitter
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = function(_, opts)
  --     if type(opts.ensure_installed) == "table" then
  --       vim.list_extend(opts.ensure_installed, {
  --         "go",
  --         "gomod",
  --       })
  --     end
  --   end,
  -- },
  -- correctly setup mason lsp extensions
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     if type(opts.ensure_installed) == "table" then
  --       vim.list_extend(opts.ensure_installed, {
  --         "gopls",
  --         "golangci-lint-langserver",
  --         "gotests",
  --       })
  --     end
  --   end,
  -- },
  -- {
  --   "ray-x/go.nvim",
  --   dependencies = { -- optional packages
  --     -- "ray-x/guihua.lua",
  --     "neovim/nvim-lspconfig",
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  --   opts = {
  --     lsp_cfg = false,
  --   },
  --   -- config = function()
  --   -- require("go").setup()
  --   --   local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
  --   --   vim.api.nvim_create_autocmd("BufWritePre", {
  --   --     pattern = "*.go",
  --   --     callback = function()
  --   --       require("go.format").goimport()
  --   --     end,
  --   --     group = format_sync_grp,
  --   --   })
  --   -- end,
  --   -- event = { "CmdlineEnter" },
  --   -- ft = { "go", "gomod" },
  --   -- build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  -- },
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },
  -- {
  --   "neovim/nvim-lspconfig",
  --   dependencies = { "ray-x/go.nvim" },
  --   opts = {
  --     -- make sure mason installs the server
  --     setup = {
  --       gopls = function(_, _)
  --         -- local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
  --         -- vim.api.nvim_create_autocmd("BufWritePre", {
  --         --   pattern = "*.go",
  --         --   callback = function()
  --         --     require("go.format").goimport()
  --         --   end,
  --         --   group = format_sync_grp,
  --         -- })
  --         local go_opts = {
  --           lsp_cfg = false,
  --         }
  --         require("go").setup(go_opts)
  --         local gopls_opts = require("go.lsp").config()
  --         require("lspconfig").gopls.setup(gopls_opts)
  --         return true
  --       end,
  --     },
  --   },
  -- },
}
