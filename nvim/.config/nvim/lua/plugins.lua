-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
function get_config(name)
    return string.format("require(\"config/%s\")", name)
end

return require('packer').startup({function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- EditorConfig
  use 'editorconfig/editorconfig-vim'

  -- Nightfox Color Theme
  use {
    'EdenEast/nightfox.nvim',
    config = get_config('nightfox')
  }

  -- Commenting Sections
  use 'tpope/vim-commentary'

  -- File Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', 
    }
  }

  -- Neovim LSP Config
  use 'neovim/nvim-lspconfig'

  -- LSP Kind
  use 'onsails/lspkind-nvim'

  -- Lua Line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons', 
      opt = true
    },
    config = get_config('lualine')
  }

  -- Auto Complete / Suggestion Menu
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  -- LuaSnip
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Git Signs
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  }

  -- Buffers
  use {
    'romgrk/barbar.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = get_config('barbar')
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 
      'nvim-lua/plenary.nvim'
    }
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim', 
    run = 'make' 
  }

  -- Treesitter
  use { 
    'nvim-treesitter/nvim-treesitter', 
    run = ':TSUpdate'
  }
 
  -- Indent Indicators
  use 'Yggdroot/indentLine'

  -- Floating Terminal
  use 'numToStr/FTerm.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end,

-- Have packer use a popup window with a single border
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})
