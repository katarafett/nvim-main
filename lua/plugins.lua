return {
    {
        -- Main colorscheme
        'rebelot/kanagawa.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme kanagawa]])
        end,
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 500
        end,
        opts = {}
    },

    -- Other colorschemes
    { "rose-pine/neovim",            lazy = false },
    { "catppuccin/nvim",             name = 'catppuccin', lazy = false },
    { 'AlexvZyl/nordic.nvim',        lazy = false },
    { "tiagovla/tokyodark.nvim",     lazy = false },
    { 'projekt0n/github-nvim-theme', lazy = false },
    { 'shaunsingh/nord.nvim',        lazy = false },
    -- { 'rebelot/kanagawa.nvim',       lazy = false },

    {
        'm-demare/hlargs.nvim',
        config = function()
            require('hlargs').setup()
        end
    },

    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        dependencies = { 'nvim-tree/nvim-web-devicons', opts = true }
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
        setup = true
    },

    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        config = function()
            vim.cmd([[TSUpdate]])
        end
    },

    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },

    {
        'gelguy/wilder.nvim',
        config = function()
            require('wilder').setup({ modes = { ':', '/', '?' } })
        end,
        dependencies = {
            'roxma/nvim-yarp',
            'roxma/vim-hug-neovim-rpc'
        },
        lazy = true
    },

    -- File nav
    { 'theprimeagen/harpoon' },

    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    { 'mbbill/undotree' },

    -- LSP and related
    {
        'williamboman/mason.nvim',
        lazy = false,
    },
    { 'williamboman/mason-lspconfig.nvim', lazy = false },
    { 'neovim/nvim-lspconfig',             lazy = false },

    {
        'L3MON4D3/LuaSnip',
        version = "v2.*",
        run = "make install_jsregexp",
        lazy = false,
    },

    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip'
        },
        lazy = false,
    },

    {
        'ms-jpq/coq_nvim',
        branch = 'coq',
        lazy = true,
    },
    {
        'ms-jpq/coq.thirdparty',
        branch = '3p',
        lazy = true,
    },
    {
        "hedyhli/outline.nvim",
        lazy = true,
        cmd = { "Outline", "OutlineOpen" },
        opts = {
        },
    },

    { 'rmagatti/goto-preview' },

    { 'lervag/vimtex',        lazy = false },

    { "folke/neodev.nvim",    opts = {} },

    {
        'numtostr/comment.nvim',
        config = true,
    },

    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    -- Git
    { 'tpope/vim-fugitive' },
}
