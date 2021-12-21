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

-- Toggle File Tree
setKeyMapNormalMode("<C-T>", ":NvimTreeToggle <cr>")

-- Resize with arrows
setKeyMapNormalMode("<C-Up>", ":resize +2<CR>")
setKeyMapNormalMode("<C-Down>", ":resize -2<CR>")
setKeyMapNormalMode("<C-Left>", ":vertical resize -2<CR>")
setKeyMapNormalMode("<C-Right>", ":vertical resize +2<CR>")

-- Reselect visual selection after indenting
setKeyMapVisualMode(">", ">gv")
setKeyMapVisualMode("<", "<gv")

-- Move single line up and down
setKeyMapNormalMode("<C-k>", ":m .-2<CR>==")
setKeyMapNormalMode("<C-j>", ":m .+1<CR>==")

-- Move bisual block selection up and down
setKepMapVisualBlock("<C-j>", ":move '>+1<CR>gv-gv")
setKepMapVisualBlock("<C-k>", ":move '<-2<CR>gv-gv")
