-- LazyVim treesitter: https://github.com/LazyVim/LazyVim/discussions/165#discussioncomment-4864274
-- treesitter queries: https://github.com/rockerBOO/tree-sitter-html-eex/
-- mini.comment commenstring: https://github.com/echasnovski/mini.nvim/discussions/332
-- nvim commentstring: https://neovim.io/doc/user/options.html#'commentstring'

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

return {
  {
    "nvim-treesitter/nvim-treesitter",
    ---@param opts TSConfig
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
      vim.filetype.add({
        extension = {
          typ = "typst",
        },
      })
      require("nvim-treesitter.parsers").get_parser_configs().typst = {
        install_info = {
          url = "https://github.com/uben0/tree-sitter-typst", -- local path or git repo
          files = {
            "src/parser.c",
            "src/scanner.c",
          }, -- note that some parsers also require src/scanner.c or src/scanner.cc
          -- optional entries:
          branch = "master", -- default branch in case of git repo if different from master
          generate_requires_npm = false, -- if stand-alone parser without npm dependencies
          requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
          maintainers = { "uben0" },
          experimental = true,
        },
        filetype = "typst",
      }
      vim.api.nvim_create_autocmd("FileType", {
        group = augroup("commentstring"),
        pattern = { "typst" },
        callback = function()
          vim.opt_local.commentstring = "// %s"
          vim.opt_local.textwidth = 80
          vim.opt_local.formatexpr = ""
        end,
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "typst-lsp" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        typst_lsp = {},
      },
    },
  },
}
