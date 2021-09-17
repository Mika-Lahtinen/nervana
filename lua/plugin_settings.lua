local let = vim.api

-- Rust.vim
let.nvim_set_var("rustfmt_autosave", 1)
let.nvim_set_var("rust_clip_command", 'xclip -selection clipboard')

-- Autoformat
let.nvim_set_var('formatterpath', {
    key1 = "/usr/bin/clang-format", 
    key2 = "/usr/bin/mix format"
})
let.nvim_set_keymap('n', '<F3>', ':Autoformat<CR>', { noremap = true, silent = true })