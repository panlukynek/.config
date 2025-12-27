-- ashen.lua
return {
  "ficcdaf/ashen.nvim",
  -- optional but recommended,
  -- pin to the latest stable release:
  tag = "*",
  lazy = false,
  priority = 1000,
  -- configuration is optional!
  -- opts = {
    -- your settings here
  -- },
  config = function() vim.cmd.colorscheme "ashen" end
}
