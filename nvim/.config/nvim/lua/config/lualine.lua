local colors = require("nightfox.colors").load()

require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 
      {
        'diff',
      }, 
      {
        'diagnostics', 
        sources = {'nvim_diagnostic'},
        update_in_insert_mode = true
      }
    },
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {},
  theme = {
    normal = {
      a = { bg = colors.blue, fg = colors.black },
      b = { bg = colors.fg_gutter, fg = colors.blue },
      c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
    },
    insert = {
      a = { bg = colors.green, fg = colors.black },
      b = { bg = colors.fg_gutter, fg = colors.green },
    },
    command = {
      a = { bg = colors.yellow, fg = colors.black },
      b = { bg = colors.fg_gutter, fg = colors.yellow },
    },
    visual = {
      a = { bg = colors.magenta, fg = colors.black },
      b = { bg = colors.fg_gutter, fg = colors.magenta },
    },
    replace = {
      a = { bg = colors.red, fg = colors.black },
      b = { bg = colors.fg_gutter, fg = colors.red },
    },
    inactive = {
      a = { bg = colors.bg_statusline, fg = colors.blue },
      b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
      c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
    } 
  }
})
