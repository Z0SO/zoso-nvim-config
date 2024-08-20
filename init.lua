-- ~/.config/nvim/init.lua

-- Asegúrate de que 'lazy.nvim' esté en el runtimepath
vim.opt.runtimepath:append(vim.fn.stdpath('data') .. '/site/pack/packer/start/lazy.nvim')

require('core.keymaps')
require('core.options')

-- Configura lazy.nvim para gestionar plugins
require('lazy').setup('plugins')

