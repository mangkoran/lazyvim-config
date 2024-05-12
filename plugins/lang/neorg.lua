return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "nvim-neorg/neorg",
    -- build = ":Neorg sync-parsers",
    -- tag = "*",
    dependencies = { "luarocks.nvim" },
    -- lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    event = "VeryLazy",
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
          ["core.integrations.nvim-cmp"] = {},
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              use_popup = false,
              workspaces = {
                notes = "~/notes",
              },
            },
          },
        },
      })
    end,
  },
}
