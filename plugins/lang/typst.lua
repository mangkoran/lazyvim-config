-- LazyVim treesitter: https://github.com/LazyVim/LazyVim/discussions/165#discussioncomment-4864274
-- treesitter queries: https://github.com/rockerBOO/tree-sitter-html-eex/
-- mini.comment commenstring: https://github.com/echasnovski/mini.nvim/discussions/332
-- nvim commentstring: https://neovim.io/doc/user/options.html#'commentstring'

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.filetype.add({
  extension = {
    typ = "typst",
  },
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup("commentstring"),
  pattern = { "typst" },
  callback = function()
    vim.opt_local.commentstring = "// %s"
  end,
})

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "typst" } },
  },
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "typst-lsp" } },
  },
  {
    "neovim/nvim-lspconfig",
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
    opts = {
      formatters_by_ft = {
        typst = { "typstfmt" },
      },
    },
  },
}
