-- ~/.config/nvim/lua/core/options.lua



-- Neovide: factor de escalado de la fuente
vim.g.neovide_scale_factor = 0.7  -- Cambia este valor al tamaño que prefieras

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


--------------------------------------------------
--- Neovide: efectos de cursor
--------------------------------------------------
-- vim.g.neovide_cursor_vfx_mode = "railgun"  -- Efecto de disparo de railgun
-- vim.g.neovide_cursor_vfx_mode = "sonicboom"  -- Efecto de explosión de sonicboom
-- vim.g.neovide_cursor_vfx_mode = "simple"  -- Efecto de cursor simple
-- vim.g.neovide_cursor_vfx_mode = "pixiedust"  -- Efecto de polvo de hadas
-- vim.g.neovide_cursor_vfx_mode = "crystal"  -- Efecto de cristal
-- vim.g.neovide_cursor_vfx_mode = "beam"  -- Efecto de rayo
-- vim.g.neovide_cursor_vfx_mode = "jelly"  -- Efecto de gelatina
-- vim.g.neovide_cursor_vfx_mode = "combust"  -- Efecto de combustión
-- vim.g.neovide_cursor_vfx_mode = "atom"  -- Efecto de átomo
-- vim.g.neovide_cursor_vfx_mode = "ripple"  -- Efecto de ondulación
-- vim.g.neovide_cursor_vfx_mode = "nova"  -- Efecto de supernova
-- vim.g.neovide_cursor_vfx_mode = "wormhole"  -- Efecto de agujero de gusano
-- vim.g.neovide_cursor_vfx_mode = "hyperspace"  -- Efecto de hiperespacio
-- vim.g.neovide_cursor_vfx_mode = "portal"  -- Efecto de portal
-- vim.g.neovide_cursor_vfx_mode = "teleport"  -- Efecto de teletransporte
-- vim.g.neovide_cursor_vfx_mode = "warp"  -- Efecto de distorsión
-- vim.g.neovide_cursor_vfx_mode = "wobble"  -- Efecto de temblor
-- vim.g.neovide_cursor_vfx_mode = "orbit"  -- Efecto de órbita
-- vim.g.neovide_cursor_vfx_mode = "comet"  -- Efecto de cometa
-- vim.g.neovide_cursor_vfx_mode = "shockwave"  -- Efecto de onda de choque
-- vim.g.neovide_cursor_vfx_mode = "firework"  -- Efecto de fuegos artificiales
-- vim.g.neovide_cursor_vfx_mode = "magic"  -- Efecto de magia
-- vim.g.neovide_cursor_vfx_mode = "sparkle"  -- Efecto de chispa
-- vim.g.neovide_cursor_vfx_mode = "flame"  -- Efecto de llama
-- vim.g.neovide_cursor_vfx_mode = "burn"  -- Efecto de quemadura
-- vim.g.neovide_cursor_vfx_mode = "smoke"  -- Efecto de humo
-- vim.g.neovide_cursor_vfx_mode = "cloud"  -- Efecto de nube
-- vim.g.neovide_cursor_vfx_mode = "rain"  -- Efecto de lluvia
-- vim.g.neovide_cursor_vfx_mode = "snow"  -- Efecto de nieve
-- vim.g.neovide_cursor_vfx_mode = "confetti"  -- Efecto de confeti
-- vim.g.neovide_cursor_vfx_mode = "streamer"  -- Efecto de corriente
-- vim.g.neovide_cursor_vfx_mode = "ribbon"  -- Efecto de cinta
-- vim.g.neovide_cursor_vfx_mode = "balloon"  -- Efecto de globo
-- vim.g.neovide_cursor_vfx_mode = "bubble"  -- Efecto de burbuja
-- vim.g.neovide_cursor_vfx_mode = "splash"  -- Efecto de salpicadura
