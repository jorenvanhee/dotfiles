-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Color schemes
    use("folke/tokyonight.nvim")

    -- Completion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-nvim-lsp")
    use("onsails/lspkind.nvim")

    -- Snippets
    use("L3MON4D3/LuaSnip")
    use("rafamadriz/friendly-snippets")
    use("saadparwaiz1/cmp_luasnip")

    -- File explorer
    use("nvim-tree/nvim-tree.lua")
    use("nvim-tree/nvim-web-devicons")

    -- Syntax highlighting
    use("lumiliet/vim-twig")
    use("jwalton512/vim-blade")
    use("Glench/Vim-Jinja2-Syntax")

    -- LSP related
    use("neovim/nvim-lspconfig")
    use({
        "jose-elias-alvarez/null-ls.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    })
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("jay-babu/mason-null-ls.nvim")
    use("ray-x/lsp_signature.nvim")

    -- Telescope
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        requires = { "nvim-lua/plenary.nvim" },
    })
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update({
                with_sync = true,
            })

            ts_update()
        end,
    })

    -- tmux.nvim
    use("aserowy/tmux.nvim")

    -- Other
    use("justinmk/vim-sneak")
    use("tpope/vim-surround")
    use("tpope/vim-commentary")
    use("tpope/vim-repeat")
    use("tpope/vim-abolish")
    use("windwp/nvim-autopairs")
    use("gpanders/editorconfig.nvim")
    use("lewis6991/gitsigns.nvim")
    use("mattn/emmet-vim")
    use("folke/which-key.nvim")
end)
