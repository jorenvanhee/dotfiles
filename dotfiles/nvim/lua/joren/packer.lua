-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use 'justinmk/vim-sneak'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'tpope/vim-repeat'
    use 'tpope/vim-abolish'
    use 'nvim-tree/nvim-tree.lua'
    use 'windwp/nvim-autopairs'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} },
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-nvim-lsp")
    use("onsails/lspkind.nvim")
    use("neovim/nvim-lspconfig")
    use("lumiliet/vim-twig")
    use("gpanders/editorconfig.nvim")
    use("lewis6991/gitsigns.nvim")
    use("mattn/emmet-vim")
    use("ray-x/lsp_signature.nvim")
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use("nvim-tree/nvim-web-devicons")
end)
