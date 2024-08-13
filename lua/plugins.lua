return {
{
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
    },
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
  --Telescope/file finder plugin
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  --Dependency for telescope to work properly
  { 
    "nvim-lua/plenary.nvim", lazy = true 
  },
  --- LSP-Zero, LSP config, Mason and other dependencies
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {
	  'windwp/nvim-autopairs',
	  event = "InsertEnter",
	  config = true
  }

}
