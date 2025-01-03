vim.wo.number = true 
vim.wo.relativenumber = true;
vim.opt.tabstop = 3
vim.opt.shiftwidth = 3

vim.opt.guifont = "JetBrainsMono Nerd Font:h12"
vim.cmd("colorscheme hybrid")

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-z>', '<C-o>u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent = true })
