-- ~/.config/nvim/init.lua

local lazypath = vim.fn.stdpath('data') .. '/site/pack/packer/start/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', lazypath
  })
end

-- Asegúrate de que 'lazy.nvim' esté en el runtimepath


vim.opt.runtimepath:append(vim.fn.stdpath('data') .. '/site/pack/packer/start/lazy.nvim')


vim.env.PATH = vim.env.PATH .. ':~/.npm-global/bin'



require('core.keymaps')

require('core.options')

-- Configura lazy.nvim para gestionar plugins
require('lazy').setup('plugins')


