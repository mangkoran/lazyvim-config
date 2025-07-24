-- LazyVim treesitter: https://github.com/LazyVim/LazyVim/discussions/165#discussioncomment-4864274
-- treesitter queries: https://github.com/rockerBOO/tree-sitter-html-eex/
-- nvim commentstring: https://neovim.io/doc/user/options.html#'commentstring'

vim.filetype.add({
  extension = {
    typ = "typst",
  },
})

return {
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = { ensure_installed = { "typst" } },
  },
  {
    "williamboman/mason.nvim",
    optional = true,
    opts = { ensure_installed = { "typst-lsp" } },
  },
  {
    "neovim/nvim-lspconfig",
    optional = true,
    opts = {
      servers = {
        typst_lsp = {
          settings = {
            exportPdf = "never",
          },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        typst = { "typstfmt" },
      },
    },
  },
  {
    "folke/ts-comments.nvim",
    optional = true,
    opts = {
      lang = {
        typst = "// %s",
      },
    },
  },
}
