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

    --- Telescope/file finder plugin
    {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	--- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' }
    },

    --- Dependency for telescope to work properly
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
    },

    {
	'stevearc/oil.nvim',
	---@module 'oil',
	---@type oil.SetupOpts
	opts = {
	    default_file_explorer = true,
	    skip_confirm_for_simple_edits = false,
	    keymaps = {
		["g?"] = { "actions.show_help", mode = "n" },
		["<C-j>"] = "actions.select",
		["<C-s>"] = { "actions.select", opts = { vertical = true } },
		-- ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
		["<C-t>"] = { "actions.select", opts = { tab = true } },
		["<C-p>"] = "actions.preview",
		["<C-c>"] = { "actions.close", mode = "n" },
		["<C-l>"] = "actions.refresh",
		["<C-h>"] = { "actions.parent", mode = "n" },
		["_"] = { "actions.open_cwd", mode = "n" },
		["`"] = { "actions.cd", mode = "n" },
		["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
		["gs"] = { "actions.change_sort", mode = "n" },
		["gx"] = "actions.open_external",
		["g."] = { "actions.toggle_hidden", mode = "n" },
		["g\\"] = { "actions.toggle_trash", mode = "n" },
	    },
		-- Padding around the floating window
		padding = 2,
		max_width = 0,
		max_height = 0,
		border = "rounded",
		win_options = {
		    winblend = 0,
		},
	    },
	    -- Configuration for the file preview window
	    preview_win = {
		-- Whether the preview window is automatically updated when the cursor is moved
		update_on_cursor_moved = true,
		-- How to open the preview window "load"|"scratch"|"fast_scratch"
		preview_method = "fast_scratch",
		-- A function that returns true to disable preview on a file e.g. to avoid lag
		disable_preview = function(filename)
		    return false
		end,
		-- Window-local options to use for preview window buffers
		win_options = {},
	    },
	dependencies = { { "echasnovski/mini.icons", opts = {} }},
    }

}
