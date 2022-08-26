-- packer.nvim plugin manager

return require('packer').startup(function(use)
	-- indent markers
	use "lukas-reineke/indent-blankline.nvim"

	-- file-tree for neovim
	use {
  		'kyazdani42/nvim-tree.lua',
  		requires = {
    			'kyazdani42/nvim-web-devicons', -- optional, for file icons
  		},
  		-- tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	
	-- bufferline
	use {'akinsho/bufferline.nvim', 
		tag = "v2.*", 
		requires = 'kyazdani42/nvim-web-devicons'
	}

	-- telescope search
	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

end)