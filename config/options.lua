-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-------------------- HELPERS -------------------------------
local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn -- to call Vim functions e.g. fn.bufnr()
local g = vim.g -- a table to access global variables
local opt = vim.opt -- to set options

opt.expandtab = true -- Use spaces instead of tabs
-- opt.hidden = true                   -- Enable background buffers
opt.ignorecase = true -- Ignore case
opt.joinspaces = false -- No double spaces with join
opt.list = true -- Show some invisible characters
-- opt.number = true                   -- Show line numbers
-- opt.relativenumber = true           -- Relative line numbers
opt.scrolloff = 727 -- Lines of context
-- opt.shiftround = true               -- Round indent
-- opt.shiftwidth = 2                  -- Size of an indent
opt.sidescrolloff = 16 -- Columns of context
-- opt.smartcase = true                -- Do not ignore case with capitals
-- opt.smartindent = true              -- Insert indents automatically
-- opt.splitbelow = true               -- Put new windows below current
-- opt.splitright = true               -- Put new windows right of current
-- opt.tabstop = 2                     -- Number of spaces tabs count for
-- opt.termguicolors = true            -- True color support
-- opt.wildmode = {'list', 'longest'}  -- Command-line completion mode
-- opt.wrap = false                    -- Disable line wrap
opt.cursorline = true
opt.cursorcolumn = true
-- opt.clipboard:append({ "unnamed", "unnamedplus" })
opt.clipboard:append({ "unnamedplus" })

opt.conceallevel = 2

-- opt.textwidth = 100

vim.filetype.add({
  pattern = {
    [".*.ansible.yaml"] = "yaml.ansible",
    [".*/tasks/.*.yaml"] = "yaml.ansible",
  },
})
