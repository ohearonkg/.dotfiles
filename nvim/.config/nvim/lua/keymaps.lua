local opts = { noremap = true, silent = true }

function setKeyMap(mode, lhs, rhs) 
  return vim.api.nvim_set_keymap(mode, lhs, rhs, opts);
end

function setKeyMapNormalMode(lhs, rhs) 
  return setKeyMap("n", lhs, rhs);
end

function setKeyMapVisualMode(lhs, rhs)
  return setKeyMap("v", lhs, rhs);
end

function setKepMapVisualBlock(lhs, rhs)
  return setKeyMap("x", lhs, rhs);
end

-- Navigate buffers
setKeyMapNormalMode("<S-l>", ":bnext<CR>")
setKeyMapNormalMode("<S-h>", ":bprevious<CR>")

-- Allow gf to open non-existant file 
setKeyMapNormalMode("gf", ":edit <cfile><cr>")

-- Resize with arrows
setKeyMapNormalMode("<C-Up>", ":resize +2<CR>")
setKeyMapNormalMode("<C-Down>", ":resize -2<CR>")
setKeyMapNormalMode("<C-Left>", ":vertical resize -2<CR>")
setKeyMapNormalMode("<C-Right>", ":vertical resize +2<CR>")

-- Reselect visual selection after indenting
setKeyMapVisualMode(">", ">gv")
setKeyMapVisualMode("<", "<gv")

-- Move single line up and down
setKeyMapNormalMode("<A-k>", ":m .-2<CR>==")
setKeyMapNormalMode("<A-j>", ":m .+1<CR>==")

-- Move bisual block selection up and down
setKepMapVisualBlock("<A-j>", ":move '>+1<CR>gv-gv")
setKepMapVisualBlock("<A-k>", ":move '<-2<CR>gv-gv")

-- Find Files via Telescope
setKeyMapNormalMode('<C-p>', '<cmd>Telescope git_files<cr>')
-- Live Grep via Telescope
setKeyMapNormalMode('<C-f>', '<cmd>Telescope live_grep<cr>')

-- Toggle File Tree
setKeyMapNormalMode("<C-T>", ":NvimTreeToggle <cr>")
