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

require("lazy").setup({
    {"folke/which-key.nvim", lazy = true},
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",

  })
