return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'folke/which-key.nvim'
    use 'folke/neoconf.nvim'
    use 'folke/neodev.nvim'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            {'neovim/nvim-lspconfig'},
            {
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    use { 'rose-pine/neovim', as = 'rose-pine' }
    use 'nvim-lualine/lualine.nvim'
    use 'numToStr/Comment.nvim'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = {'nvim-lua/plenary.nvim'} }
    use ('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-sleuth'
    use 'ThePrimeagen/harpoon'
    use 'mbbill/undotree'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'folke/zen-mode.nvim'
    -- use 'github/copilot.vim'
    use 'folke/trouble.nvim'
end)
