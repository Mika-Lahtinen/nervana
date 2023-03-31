local fn = vim.fn

local lazypath = fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "git@github.com:folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({

    -- Languages plugins
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-refactor',
            'nvim-treesitter/nvim-treesitter-textobjects'
        },
        build = ':TSUpdate'
    } ,
    'folke/lua-dev.nvim' ,

    -- Built-in LSP
    'neovim/nvim-lspconfig' ,
    'williamboman/nvim-lsp-installer' ,

    -- [[ 
    --      Coc.nvim, alternative for Neovim's built-in LSP. 
    --      Friendly to the beginner of Vim/Neovim, heavier than built-in LSP.
    -- ]] 
    -- use {'neoclide/coc.nvim', branch= 'release'}

    -- Code completion
    -- nvim-cmp
    'hrsh7th/cmp-nvim-lsp' , -- { name = nvim_lsp }
    'hrsh7th/cmp-buffer' ,   
    'hrsh7th/cmp-path' ,         
    'hrsh7th/cmp-cmdline' ,  
    'hrsh7th/nvim-cmp' ,
    -- vsnip
    'hrsh7th/cmp-vsnip' ,    
    'hrsh7th/vim-vsnip' ,
    'rafamadriz/friendly-snippets' ,
    -- lspkind
    'onsails/lspkind-nvim' ,

    'rust-lang/rust.vim' ,

    'elixir-lang/vim-elixir' ,
    'thinca/vim-ref' ,
    'slashmili/alchemist.vim' ,

    'vim-ruby/vim-ruby' ,

    'vim-erlang/vim-erlang-runtime' ,
    'vim-erlang/vim-erlang-omnicomplete' ,
    'vim-erlang/vim-erlang-tags' ,
    'vim-erlang/vim-erlang-compiler' ,

    'derekwyatt/vim-scala' ,

    -- Markdown
    {
        'iamcco/markdown-preview.nvim',
        build = 'cd app & yarn install' 
    } ,

    -- Files
    'preservim/nerdtree' ,
    'ryanoasis/vim-devicons' ,
    'Chiel92/vim-autoformat' ,
    -- 'dense-analysis/ale' ,
    'jiangmiao/auto-pairs' ,
    'sbdchd/neoformat' ,

    -- Asynchronous terminal emulator 
    'akinsho/toggleterm.nvim' ,

    --Color schemes
    'fxn/vim-monochrome' ,
    'fenetikm/falcon' ,
    'rafi/awesome-vim-colorschemes' ,

})
