return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-sleuth'
    use 'folke/which-key.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'nvim-lualine/lualine.nvim'
    use {'lukas-reineke/indent-blankline.nvim'}
    use 'numToStr/Comment.nvim'
    use { 'rose-pine/neovim', as = 'rose-pine' }
    use 'ThePrimeagen/harpoon'
    use 'mbbill/undotree'
    use {
        'nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate' },
        require= {
          'nvim-treesitter/nvim-treesitter-textobjects'
        }
    }
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        requires = {
            'nvim-lua/plenary.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                run = "make",
            }
        }
    }
    use {
        'neovim/nvim-lspconfig',
        requires = {
          'williamboman/mason.nvim',
          'williamboman/mason-lspconfig.nvim',
          { 'j-hui/fidget.nvim', opts = true },
          'folke/neodev.nvim',
          'hrsh7th/nvim-cmp',
          'hrsh7th/cmp-nvim-lsp',
          'L3MON4D3/LuaSnip',
          'saadparwaiz1/cmp_luasnip',
          'rafamadriz/friendly-snippets',
        }
    }
end)
