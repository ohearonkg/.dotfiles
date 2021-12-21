local function applyOptions(options)
  for key, value in pairs(options) do
    vim.opt[key] = value
  end
end

local options = {
  autoindent = true, -- Copy Ident From Current Line When Starting a New Line
  completeopt = { "menu", "menuone", "noselect" }, -- Popup Menu Settings
  cursorline = true, -- Highlight Current Line
  errorbells = false, -- Do Not User Error Bells
  expandtab = true, -- Convert Tab to Spaces
  fileencoding = "utf-8", -- File Content Encoding
  hidden = true, -- Do Not Unload Buffers When Abandoned
  incsearch = true, -- Highlight Matching Strings While Searching
  ignorecase = true, -- Make Search Case Insensitive
  hlsearch = false, -- Do Not Highlight After Search
  number = true, -- Show Line Numbers
  relativenumber = true, -- Show Relative Line Numbers
  shiftwidth = 2, -- Number of Space Characters Inserted For Indentation
  scrolloff = 8, -- Offset Scrolling By 8 Lines
  showmode = false, -- Remove Seeing --INSERT-- etc,
  showtabline = 2, -- Always Show Tab Line
  signcolumn = "yes", -- Always Show Sign Column Preventing Horizontal Shifting During Appearance
  smarttab = true, -- Causes a Tab In Front of a Line To Insert Blank According To shiftwidth
  smartindent = true, -- Do Smart Indenting
  softtabstop = 2, -- Number of Spaces Tab Counts For While Performing Edit Operations 
  splitbelow = true, -- Force Horizontal Splits Below Current Window
  splitright = true, -- Force Vertical Splits To Right of Current Window
  swapfile = false, -- Prevent Creation of Swap File
  tabstop = 2, -- Make Tab Equal To Two Spaces
  termguicolors = true, -- Enables 24-bit RGB Colors
  wrap = false -- Prevents Long Lines From Wrapping 
}

applyOptions(options)
