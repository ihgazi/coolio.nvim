-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({ 'rose-pine/neovim', as = 'rose-pine' })

    use { "Tsuzat/NeoSolarized.nvim", as = "NeoSolarized" }

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	
	use { "catppuccin/nvim", as = "catppuccin" }
	
	use('nvim-treesitter/playground')

	use('theprimeagen/harpoon')

	use('mbbill/undotree')

	use('tpope/vim-fugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}

    use('preservim/tagbar')

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

   --use('nvim-tree/nvim-tree.lua')

   use('nvim-tree/nvim-web-devicons')

   use('prichrd/netrw.nvim')

   use('prettier/vim-prettier')

   use('mfussenegger/nvim-jdtls');

   use('github/copilot.vim');

   use('rcarriga/nvim-notify');

   use('echasnovski/mini.animate');

   use {
       'nvimdev/dashboard-nvim',
       requires = {
           {'nvim-tree/nvim-web-devicons'}
       }
   }

   use {
       'folke/noice.nvim',
       requires = {
           {'MunifTanjim/nui.nvim'},
           {'rcarriga/nvim-notify'}
       }
   }

end,
config = {
        --clone_timeout = 1000
    }
})
