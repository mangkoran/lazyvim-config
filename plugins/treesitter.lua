return {
  {
    "windwp/nvim-ts-autotag",
    dependencies = { -- optional packages
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
    init = function(_, opts)
      require("nvim-treesitter.configs").setup({
        autotag = {
          enable = true,
        },
      })
    end,
  },
}
