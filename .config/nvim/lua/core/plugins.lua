local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ 'phaazon/hop.nvim' }, 
    {
	    "nvim-neo-tree/neo-tree.nvim",
	    branch = "v2.x",
	    dependencies = {
		    "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
		    "MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
	    }
    },
    { 'akinsho/toggleterm.nvim', version = "*", config = true },
    { 'nvim-treesitter/nvim-treesitter', branch = 'master', lazy = false, build = ":TSUpdate"},
    { 'airblade/vim-gitgutter' },
    { 'neovim/nvim-lspconfig' },
    {
        'dmtrKovalenko/fff.nvim',
        build = function()
        require("fff.download").download_or_build_binary() end,
        opts = { 
            debug = {
                enabled = true,     
                show_scores = true, 
            },
        },
        lazy = false,
        keys = {
            {
                "ff", 
                function() require('fff').find_files() end,
                desc = 'FFFind files',
            }
        }
    },

    -- debug
    { "mfussenegger/nvim-dap"},
    { "rcarriga/nvim-dap-ui", 
        dependencies = {
            "mfussenegger/nvim-dap", 
            "nvim-neotest/nvim-nio"
        } 
    },

    -- themes
    { "catppuccin/nvim", name = "catppuccin", },
    { "ellisonleao/gruvbox.nvim", name = "gruvbox" },
    { "neanias/everforest-nvim", version = false, name = "everforest" },
    { "AlexvZyl/nordic.nvim", priority = 1000 },
    { "Shatur/neovim-ayu" },
    { "rebelot/kanagawa.nvim" },
    { "folke/tokyonight.nvim" },

    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'sharkdp/fd' },

    { 
        "williamboman/mason.nvim",
        build = ":MasonUpdate"
    },

    { 'zaldih/themery.nvim' },

    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
  
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        dependencies = { {'nvim-tree/nvim-web-devicons'}}
    }
})
