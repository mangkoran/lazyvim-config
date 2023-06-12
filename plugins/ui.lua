return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      contrast = "hard",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  {
    "rcarriga/nvim-notify",
    -- opts will be merged with the parent spec
    opts = {
      fps = 60,
      stages = "fade",
    },
  },
  -- {
  --   "andrewferrier/wrapping.nvim",
  --   config = function()
  --     require("wrapping").setup()
  --   end,
  -- },
}
