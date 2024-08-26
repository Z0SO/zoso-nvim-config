

-- ~/.config/nvim/lua/core/keymaps.lua

------------------------------------------------------------------------------------------
-- Tecla Líder
------------------------------------------------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "


------------------------------------------------------------------------------------------
---Configuración General
------------------------------------------------------------------------------------------

-- Navegación entre ventanas
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Navegación entre ventanas con Ctrl + Mayúsculas
vim.api.nvim_set_keymap('n', '<C-M-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-M-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-M-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-M-l>', '<C-w>l', { noremap = true, silent = true })


-- Guardado y cierre rápido
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>Q', ':qa<CR>', { noremap = true, silent = true })


-- Alternar la barra de números relativa
vim.api.nvim_set_keymap('n', '<leader>rn', ':set relativenumber!<CR>', { noremap = true, silent = true })


-- Borrar sin copiar al registro
vim.api.nvim_set_keymap('n', 'x', '"_x', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'x', '"_x', { noremap = true, silent = true })


-- Navegación y gestión de buffers
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bn', ':enew<CR>', { noremap = true, silent = true })

-- Atajo para ejecutar :vsp (ventana vertical dividida)
vim.api.nvim_set_keymap('n', '<leader>tt', ':vsp<CR>', { noremap = true, silent = true })

-- Cambiar entre modos en terminal
vim.api.nvim_set_keymap('t', '<C-\\><C-n>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Reemplazar palabra bajo el cursor
vim.api.nvim_set_keymap('n', '<leader>rw', ':%s/\\<<C-r><C-w>\\>//g<Left><Left>', { noremap = true })

-- Mover líneas visualmente
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Mantener el cursor centrado al desplazarse
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-i>', 'zz', { noremap = true, silent = true })

-- Accesos directos a configuración de Neovim
vim.api.nvim_set_keymap('n', '<leader>vv', ':e $MYVIMRC<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pp', ':e ~/.config/nvim/lua/plugins/init.lua<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>kk', ':e ~/.config/nvim/lua/core/keymaps.lua<CR>', { noremap = true, silent = true })

-- Recargar configuración sin salir de Neovim
vim.api.nvim_set_keymap('n', '<leader>sv', ':source $MYVIMRC<CR>', { noremap = true, silent = true })

-- Ir a la última línea del archivo
vim.api.nvim_set_keymap('n', ',', '$', { noremap = true, silent = true })


-- Volver al modo normal desde modo insercion presionando las teclas jk
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

------------------------------------------------------------------------------------------
-- Tabulacion
------------------------------------------------------------------------------------------

-- Configuración para tabulación y des-tabulación en el modo visual
vim.api.nvim_set_keymap('v', '<leader><Tab>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader><S-Tab>', '<gv', { noremap = true, silent = true })

-- Configuración para tabulación y des-tabulación en el modo normal
vim.api.nvim_set_keymap('n', '<leader><Tab>', '>>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><S-Tab>', '<<', { noremap = true, silent = true })



------------------------------------------------------------------------------------------
-- Ajuste de tamaño de ventana en Neovide
------------------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<C-+>', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-->', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor / 1.1<CR>', { noremap = true, silent = true })

------------------------------------------------------------------------------------------
-- Copiado y pegado de texto
------------------------------------------------------------------------------------------
-- Copiar y pegar desde/para el portapapeles del sistema
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true })


-- Pegar texto en Neovide
vim.api.nvim_set_keymap('n', '<C-S-P>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-S-V>', '<C-r>+', { noremap = true, silent = true })


------------------------------------------------------------------------------------------
-- Mapeos para moverse entre párrafos
------------------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<A-k>', '{', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-j>', '}', { noremap = true, silent = true })

-- Tambien para modo visual
vim.api.nvim_set_keymap('v', '<A-k>', '{', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-j>', '}', { noremap = true, silent = true })



------------------------------------------------------------------------------------------
--- Navegacion entre palabras
------------------------------------------------------------------------------------------

-- Mapeo para moverse hacia atras y adelante entre palabras
vim.api.nvim_set_keymap('n', '<A-h>', 'b', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', 'w', { noremap = true, silent = true })

-- Mapeo para moverse hacia atras y adelante entre palabras en modo visual
vim.api.nvim_set_keymap('v', '<A-h>', 'b', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-l>', 'w', { noremap = true, silent = true })

-- Borrado de palabras en modo insercion con alt + retroceso
vim.api.nvim_set_keymap('i', '<A-BS>', '<C-w>', { noremap = true, silent = true })

-- Borrado de palabras en modo normal con alt + retroceso
vim.api.nvim_set_keymap('n', '<A-BS>', 'db', { noremap = true, silent = true })



------------------------------------------------------------------------------------------
-- NvimTree: Navegación del árbol de archivos
------------------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ew', ':NvimTreeFocus<CR>', { noremap = true, silent = true })

-- para cerrar el árbol de archivos
vim.api.nvim_set_keymap('n', '<leader>ec', ':NvimTreeClose<CR>', { noremap = true, silent = true })

------------------------------------------------------------------------------------------
-- Commentary: Comentar y descomentar código
------------------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<leader>c<leader>', ':Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>c<leader>', ':Commentary<CR>', { noremap = true, silent = true })

------------------------------------------------------------------------------------------
-- Telescope: Búsquedas
------------------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })


------------------------------------------------------------------------------------------
-- Múltiples cursores con vim-visual-multi
------------------------------------------------------------------------------------------
vim.g.VM_maps = {
    ['Find Under']         = '<C-n>',
    ['Find Subword Under'] = '<C-n>',
    ['Next']               = '<C-n>',
    ['Prev']               = '<C-p>',
    ['Skip']               = '<C-x>',
    ['Remove Region']      = '<C-d>',
    ['Start Regex Search'] = '<C-/>'
}


------------------------------------------------------------------------------------------
-- Configuración de EasyMotion
------------------------------------------------------------------------------------------
vim.g.EasyMotion_leader_key = '<Leader><Leader>'
vim.api.nvim_set_keymap('n', '<Leader><Leader>b', '<Plug>(easymotion-b)', {})
vim.api.nvim_set_keymap('n', '<Leader><Leader>j', '<Plug>(easymotion-j)', {})
vim.api.nvim_set_keymap('n', '<Leader><Leader>k', '<Plug>(easymotion-k)', {})
vim.api.nvim_set_keymap('n', '<Leader><Leader>f', '<Plug>(easymotion-f)', {})
vim.api.nvim_set_keymap('n', '<Leader><Leader>t', '<Plug>(easymotion-t)', {})

-- vim.g.EasyMotion_do_mapping = 0
-- vim.g.EasyMotion_smartcase = 1

-- Mapea <Leader><Leader>w para buscar una palabra en la dirección del cursor
vim.api.nvim_set_keymap('n', '<Leader><Leader>w', '<Plug>(easymotion-w)', { noremap = true, silent = true })

-- Mapea <Leader><Leader>s para buscar una cadena completa usando EasyMotion
vim.api.nvim_set_keymap('n', '<Leader><Leader>s', '<Plug>(easymotion-sn)', { noremap = true, silent = true })


-- Configura resaltado para EasyMotion

vim.cmd [[highlight EasyMotionTarget cterm=bold ctermbg=red guibg=red]]
vim.cmd [[highlight EasyMotionShade ctermbg=darkgray guibg=darkgray]]

