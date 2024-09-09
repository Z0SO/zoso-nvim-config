-- ~/.config/nvim/lua/core/options.lua



-- Neovide: factor de escalado de la fuente

vim.g.neovide_scale_factor = 0.8  -- Cambia este valor al tamaño que prefieras


-- Opcional: Configura opciones básicas
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.opt.termguicolors = true

-- Configuración de Emmet
vim.g.user_emmet_leader_key = '<C-e>' -- Usa Ctrl+e como atajo para expandir abreviaciones

--------------------------------------------------
--- SLEUTH
--------------------------------------------------
-- vim.g.sleuth_autoindent = 1



-- Configuración de la barra lateral
-- barra lateral a la derecha
vim.g.nvim_tree_side = 'right'


