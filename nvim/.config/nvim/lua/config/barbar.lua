local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- TODO(kohearon): Move key mappings to another location
-- Pin buffer
map('n', '<A-p>', ':BufferPin<CR>', opts)

-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)

-- SHIFT-TAB will go back
map('n', '<S-TAB>', ':bprevious<CR>', opts);

-- TAB in general mode will move to text buffer
map('n', '<TAB>', ':bnext<CR>', opts);
