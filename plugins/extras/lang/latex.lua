return {
  {
    "lervag/vimtex",
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_method = "tectonic"
      vim.g.vimtex_compiler_tectonic = {
        options = { "-X", "compile" },
      }
      vim.g.vimtex_subfile_start_local = true
    end,
  },
  {
    "preservim/vim-pencil",
    init = function()
      vim.g["pencil#autoformat"] = 1
      vim.g["pencil#textwidth"] = 100
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "mkd",
          "markdown",
          "tex",
          "latex",
        },
        callback = function()
          vim.fn["pencil#init"]()
        end,
      })
    end,
  },
}
