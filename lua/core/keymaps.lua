-- ~/.config/nvim/lua/core/keymaps.lua

-- Define la barra espaciadora como la tecla leader
vim.g.mapleader = ' '

-- Mapea <Leader>e para abrir/cierrar nvim-tree
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ew', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
