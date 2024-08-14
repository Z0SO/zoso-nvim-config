-- ~/.config/nvim/lua/core/keymaps.lua

-- Define la barra espaciadora como la tecla leader
vim.g.mapleader = ' '

-- Mapea <Leader>e para abrir/cierrar nvim-tree
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ew', ':NvimTreeFocus<CR>', { noremap = true, silent = true })





-- Mapea <Leader>ff para buscar archivos
vim.api.nvim_set_keymap('n', '<Leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })

-- Mapea <Leader>fg para buscar en el contenido de archivos
vim.api.nvim_set_keymap('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })

-- Mapea <Leader>fb para buscar buffers
vim.api.nvim_set_keymap('n', '<Leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })

-- Mapea <Leader>fh para buscar ayuda
vim.api.nvim_set_keymap('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })
