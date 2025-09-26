-- local highlight = {
--   "RainbowRed",
--   "RainbowYellow",
--   "RainbowBlue",
--   "RainbowOrange",
--   "RainbowGreen",
--   "RainbowViolet",
--   "RainbowCyan",
-- }

return {
  {
    "catppuccin/nvim",
    optional = true,
    opts = {
      integrations = {
        -- indent_blankline = {
        --   enabled = true,
        --   scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
        --   colored_indent_levels = true,
        -- },
        mini = {
          enabled = true,
          indentscope_color = "overlay0",
        },
      },
    },
  },
  -- {
  --   "catppuccin/nvim",
  --   optional = true,
  --   opts = function()
  --     local bufferline = require("catppuccin.groups.integrations.bufferline")
  --     bufferline.get = bufferline.get or bufferline.get_theme
  --   end,
  -- },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   opts = {
  --     -- indent = { highlight = highlight },
  --     scope = { enabled = true },
  --   },
  -- },

  -- {
  --   "echasnovski/mini.indentscope",
  --   opts = {
  --     draw = {
  --       animation = require("mini.indentscope").gen_animation.none(),
  --     },
  --     symbol = "┃", -- a bit thicker than default "│"
  --   },
  -- },
  {
    "LazyVim/LazyVim",
    optional = true,
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "folke/snacks.nvim",
    optional = true,
    opts = {
      scroll = {
        enabled = false,
        -- animate = {
        --   duration = { step = 180 },
        --   easing = "outQuint",
        -- },
      },
    },
  },
}
