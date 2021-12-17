require('nvim-tree').setup {
  open_on_setup = true,
  view = {
    -- width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
    width = 50,
    -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
    side = 'left',
    -- prevents tree from taking half of screen after opening file
    auto_resize = true
  },
  update_focused_file = {
    enable = true,
  },
  git = {
    enable = true,
    ignore = false
  }
}
