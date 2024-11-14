vim.wo.number = true 
vim.wo.relativenumber = true;
vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.guifont = "JetBrainsMono Nerd Font:h12"
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-z>', '<C-o>u', { noremap = true, silent = true })
