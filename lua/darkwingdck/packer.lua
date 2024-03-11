vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- plugin manager
    use 'wbthomason/packer.nvim'
    -- to find files and stuff
    use {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- nice theme
    use { 'ellisonleao/gruvbox.nvim' }
    -- highlight
    use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate' })
    -- the harpoon
    use { 'theprimeagen/harpoon' }
    -- undo tree
    use { 'mbbill/undotree' }
    use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
	requires = {
	    -- LSP Support
	    { 'neovim/nvim-lspconfig' },
	    { 'williamboman/mason.nvim' },
	    { 'williamboman/mason-lspconfig.nvim' },

	    -- Autocompletion
	    { 'hrsh7th/nvim-cmp' },
	    { 'hrsh7th/cmp-buffer' },
	    { 'hrsh7th/cmp-path' },
	    { 'saadparwaiz1/cmp_luasnip' },
	    { 'hrsh7th/cmp-nvim-lsp' },
	    { 'hrsh7th/cmp-nvim-lua' },

	    -- Snippets
	    { 'L3MON4D3/LuaSnip' },
	    { 'rafamadriz/friendly-snippets' },
	}
    }
    -- autoindent
    use { 'tpope/vim-sleuth' }
    -- git client
    use { 'sindrets/diffview.nvim' }
    -- signs on left bar and blame string
    use { 'lewis6991/gitsigns.nvim' }
    -- prettier
    use {
	'MunifTanjim/prettier.nvim',
	requires = {
	    { 'jose-elias-alvarez/null-ls.nvim' }
	}
    }
    use {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
	    require("nvim-autopairs").setup {}
	end
    }
end)
