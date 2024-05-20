-- Test plugin, config etc. here

-- vim.api.nvim_create_augroup("dashboard_stdin", { clear = true })
-- vim.api.nvim_create_autocmd({ "StdinReadPre" }, {
--   group = "dashboard_stdin",
--   callback = function()
--     vim.g.loaded_dashboard = 1
--   end,
-- })

-- vim.api.nvim_create_augroup("dashboard", { clear = true })
-- vim.api.nvim_create_autocmd("StdinReadPre", {
--   group = "dashboard",
--   callback = function()
--     vim.g.read_from_stdin = 1
--   end,
-- })

return {
  -- {
  --   "nvimdev/dashboard-nvim",
  --   -- dir = "~/repos/fork/dashboard-nvim",
  --   lazy = false,
  --   -- priority = 1000,
  --   -- commit = "354e7bd0ad62f6e8b5ab9394b1ec7dbcaaa1470c",
  --   -- enabled = false
  -- },
}
