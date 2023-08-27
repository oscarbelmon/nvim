-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Búsqueda de ficheros y cadenas dentro de ficheros
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  } 

  -- Colores
  use({ 'rose-pine/neovim', as = 'rose-pine' })

  vim.cmd('colorscheme rose-pine')

  -- Resaltado de sintaxis
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  -- Navegación rápida por ficheros que se añaden a un buffer
  use('theprimeagen/harpoon')
  -- Árbol de cambios en el fichero actual.
  use('mbbill/undotree')
  -- Interacción con git desde nvim
  use('tpope/vim-fugitive')
  -- Envia código a un REPL que puede ser de Julia o de Python
  use('jpalardy/vim-slime')

  -- Para cargar Language Server Protocol
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {'williamboman/mason.nvim'},           -- Optional
          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},         -- Required
          {'hrsh7th/cmp-nvim-lsp'},     -- Required
          {'hrsh7th/cmp-buffer'},       -- Optional
          {'hrsh7th/cmp-path'},         -- Optional
          {'saadparwaiz1/cmp_luasnip'}, -- Optional
          {'hrsh7th/cmp-nvim-lua'},     -- Optional

          -- Snippets
          {'L3MON4D3/LuaSnip'},             -- Required
          {'rafamadriz/friendly-snippets'}, -- Optional
      }
  }

  -- Resaltado de los cambios para git
  use {
      'lewis6991/gitsigns.nvim',
      -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
 }

 -- Para comentar líneas de código
 use 'tpope/vim-commentary'

 -- Para mejorar la presentación de los errores
 use {
     "folke/trouble.nvim",
     requires = "nvim-tree/nvim-web-devicons",
     config = function()
         require("trouble").setup {
             -- your configuration comes here
             -- or leave it empty to use the default settings
             -- refer to the configuration section below
         }
     end
 }

 -- Para ejecutar JUnit test desde neovim
 use 'vim-test/vim-test'

 -- Línea con información de estado.
 use {
     'nvim-lualine/lualine.nvim',
     requires = { 'kyazdani42/nvim-web-devicons', opt = true }
 }

 -- Latex desde neovim
 use 'lervag/vimtex'

 -- Análisis de código, y herramienta de navegación.
 use({
    'ray-x/navigator.lua',
    requires = {
        { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
        { 'neovim/nvim-lspconfig' },
    },
 })


end)
