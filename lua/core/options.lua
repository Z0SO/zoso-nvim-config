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


--------------------------------------------------
--- usar el portapapeles del sistema
--------------------------------------------------
vim.opt.clipboard = 'unnamedplus'

-- si utilizas wayland, es posible que necesites instalar wl-clipboard
-- en caso de que uses x11 solo con xclip es suficiente
vim.g.clipboard = {
    name = 'wl-copy',
    copy = {
        ['+'] = 'wl-copy',
        ['*'] = 'wl-copy',
    },
    paste = {
        ['+'] = 'wl-paste',
        ['*'] = 'wl-paste',
    },
    cache_enabled = 0
}


