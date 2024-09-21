-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('nvim-treesitter/playground')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')

  use ('pgr0ss/vim-github-url')
  use ('nvim-tree/nvim-tree.lua')
  use ('tpope/vim-endwise') -- ends common declarations like if statements/loops
  use ('tpope/vim-ragtag') -- html helpers?

  use ('tpope/vim-repeat') -- Allow to repeat non-native commands
  use ('tpope/vim-rhubarb') -- Open browser to githuburl
  use ('tpope/vim-vinegar') -- make netrw browser better
  use ('vim-scripts/matchit.zip') -- augments matching capabilities in vim

  -- potentially optional
  use ('arthurxavierx/vim-caser')
  use ('airblade/vim-gitgutter')
  use ('godlygeek/tabular') -- aligns things
  use('jlanzarotta/bufexplorer')
  use ('axelf4/vim-strip-trailing-whitespace')

  -- google plugins require maktaba
  use('google/vim-maktaba')
  use('google/vim-codefmt')

  -- syntax highlighting
  use('pearofducks/ansible-vim')
  use('ekalinin/Dockerfile.vim')
  use('Glench/Vim-Jinja2-Syntax')
  use('hashivim/vim-terraform')

  -- completions
  use {
	  'neoclide/coc.nvim',
	  branch = 'release'
  }

  use('numToStr/Comment.nvim')
  use {
   'nvim-lualine/lualine.nvim',
   requires = { 'nvim-tree/nvim-web-devicons', opt = true }
   }

  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }
  use('rebelot/kanagawa.nvim')

  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  })

  -- lsp
  use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})

  use({
  	"L3MON4D3/LuaSnip",
  	-- follow latest release.
  	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  	-- install jsregexp (optional!:).
  	run = "make install_jsregexp"
  })

end)
