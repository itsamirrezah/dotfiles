return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'folke/which-key.nvim'
    use 'folke/neoconf.nvim'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
	use { 'rose-pine/neovim', as = 'rose-pine' }
    use 'nvim-lualine/lualine.nvim'
    use 'numToStr/Comment.nvim'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = {'nvim-lua/plenary.nvim'} }
	use ('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
end)
