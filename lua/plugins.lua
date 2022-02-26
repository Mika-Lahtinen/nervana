local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
    vim.cmd 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

    -- Plugin self
    use 'wbthomason/packer.nvim'

    -- Languages plugins
    use {
        'nvim-treesitter/nvim-treesitter',
        requires = {
            'nvim-treesitter/nvim-treesitter-refactor',
            'nvim-treesitter/nvim-treesitter-textobjects'
        },
        run = ':TSUpdate'
    }
    use 'folke/lua-dev.nvim'

    -- Built-in LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    -- [[ 
    --      Coc.nvim, alternative for Neovim's built-in LSP. 
    --      Friendly to the beginner of Vim/Neovim, heavier than built-in LSP.
    -- ]] 
    -- use {'neoclide/coc.nvim', branch= 'release'}

    -- Code completion
    -- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
    use 'hrsh7th/cmp-path'     -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
    -- vsnip
    use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
    -- lspkind
    use 'onsails/lspkind-nvim'

    use 'rust-lang/rust.vim'

    use 'elixir-lang/vim-elixir'
    use 'thinca/vim-ref'
    use 'slashmili/alchemist.vim'

    use 'vim-ruby/vim-ruby'

    use 'vim-erlang/vim-erlang-runtime'
    use 'vim-erlang/vim-erlang-omnicomplete'
    use 'vim-erlang/vim-erlang-tags'
    use 'vim-erlang/vim-erlang-compiler'

    use 'derekwyatt/vim-scala'

    -- Markdown
    use {
        'iamcco/markdown-preview.nvim',
        run = 'cd app & yarn install' 
    }

    -- Files
    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'
    use 'Chiel92/vim-autoformat'
    -- use 'dense-analysis/ale'
    use 'jiangmiao/auto-pairs'
    use 'sbdchd/neoformat'

    -- Asynchronous terminal emulator 
    use 'akinsho/toggleterm.nvim'

    --Color schemes
    use 'fxn/vim-monochrome'
    use 'fenetikm/falcon'
    use 'rafi/awesome-vim-colorschemes'

end)
