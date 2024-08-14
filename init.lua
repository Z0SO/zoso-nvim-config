-- ~/.config/nvim/init.lua

-- Asegúrate de que 'lazy.nvim' esté en el runtimepath
vim.opt.runtimepath:append(vim.fn.stdpath('data') .. '/site/pack/packer/start/lazy.nvim')

require('core.keymaps')


-- Configura lazy.nvim para gestionar plugins
require('lazy').setup('plugins')






-- Otras configuraciones globales pueden ir aquí
-- Por ejemplo, configuración de opciones globales, mapeos de teclas, etc.

-- Ejemplo de configuración adicional (opcional)
-- Configura la interfaz de usuario, ajustes globales, etc.




-- Opcional: Configura opciones básicas
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

