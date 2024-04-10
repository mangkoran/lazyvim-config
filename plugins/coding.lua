return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = cmp.mapping.preset.insert({
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<S-CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<C-CR>"] = function(fallback)
          cmp.abort()
          fallback()
        end,
      })
    end,
  },
  --- Subword motion
  {
    "chrisgrieser/nvim-spider",
    keys = {
      { "w", "<cmd>lua require('spider').motion('w')<CR>", mode = { "n", "o", "x", "v" }, desc = "Spider-w" },
      { "e", "<cmd>lua require('spider').motion('e')<CR>", mode = { "n", "o", "x", "v" }, desc = "Spider-e" },
      { "b", "<cmd>lua require('spider').motion('b')<CR>", mode = { "n", "o", "x", "v" }, desc = "Spider-b" },
      { "ge", "<cmd>lua require('spider').motion('ge')<CR>", mode = { "n", "o", "x", "v" }, desc = "Spider-ge" },
    },
  },
  -- TextObjs
  {
    "chrisgrieser/nvim-various-textobjs",
    keys = {
      { "aw", "<cmd>lua require('various-textobjs').subword(false)<CR>", mode = { "o", "x" }, desc = "Subword-aw" },
      { "iw", "<cmd>lua require('various-textobjs').subword(true)<CR>", mode = { "o", "x" }, desc = "Subword-iw" },
    },
  },
}
