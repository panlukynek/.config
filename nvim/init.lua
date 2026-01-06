require("remap")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.list = true

vim.opt.clipboard:append("unnamedplus")
-- Press <leader>l to toggle invisible characters
vim.keymap.set('n', '<leader>.', ':set list!<CR>')

-- vim.opt.listchars = {
  -- tab = '» ',   -- Shows a "»" followed by spaces
  -- trail = '·',  -- Shows trailing spaces as dots (optional but helpful)
  -- space = '·',  -- Shows all spaces as dots (optional, like VSCode "renderWhitespace: all")
  -- nbsp = '␣',   -- Non-breaking spaces
-- }

require("config.lazy")
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- require("colorizer").setup()
require('colorizer').setup({
  filetypes = {
    '*'; -- all filetypes
    '!vim'; -- except vim (optional)
  },
  user_default_options = {
    RGB = true;       -- #RGB hex codes
    RRGGBB = true;    -- #RRGGBB hex codes
    names = true;     -- CSS color names
    COLONS = true;    -- rgb: 255 0 0
    rgb_fn = true;    -- rgb(255, 0, 0)
    hsl_fn = true;    -- hsl(0, 100%, 50%)
    mode = 'background'; -- 'foreground' | 'background' | 'virtualtext'
  },
})

require("ibl").setup()
