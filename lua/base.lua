local set = vim.opt

-- Basic Display
set.number = true
set.relativenumber = true
set.showmode = true
set.showcmd = true
set.cursorline = true
set.wrap = true
set.linebreak = true
set.mouse = "a"
set.laststatus = 2
set.ruler = true

-- Coding
set.encoding = "utf-8"
set.autoindent = true
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.softtabstop = 4
set.ruler = true
set.cindent = true
set.wildmenu = true
set.smartindent = true

-- Caches
set.autoread = true
set.confirm = true
set.autowrite = true

-- Search
set.hlsearch = true
set.incsearch = true
set.ignorecase = true

-- Color
set.background = "dark"

vim.cmd [[
    colorscheme desert

    filetype indent on
    syntax enable
    filetype plugin indent on
    syntax on
]]
