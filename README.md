


### Instala `lazy.nvim`

Abre tu terminal y ejecuta:
```bash
git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/site/pack/packer/start/lazy.nvim
```
### Estructura del directorio


```plaintext
~/.config/nvim/
├── init.lua
└── lua/
    ├── plugins/
    │   └── init.lua
    └── core/
        └── keymaps.lua

```

## Mis atajos de teclado


#### Navegación de Ventanas

- **Moverse a la ventana a la izquierda:** `Ctrl + h`
- **Moverse a la ventana abajo:** `Ctrl + j`
- **Moverse a la ventana arriba:** `Ctrl + k`
- **Moverse a la ventana a la derecha:** `Ctrl + l`

#### Tamaño de Ventana (Neovide)

- **Aumentar tamaño de ventana:** `Ctrl + =`
- **Disminuir tamaño de ventana:** `Ctrl + -`

#### Resaltado de Texto

- **Resaltar (visual) texto:** `v`
- **Resaltar (visual) línea completa:** `V`
- **Resaltar (visual) en bloque:** `Ctrl + v`

#### Edición de Texto

- **Copiar línea actual:** `yy`
- **Pegar después del cursor:** `p`
- **Pegar antes del cursor:** `P`
- **Eliminar línea actual:** `dd`
- **Deshacer:** `u`
- **Rehacer:** `Ctrl + r`

#### Comentarios

- **Comentar línea actual:** `gcc`
- **Descomentar línea actual:** `gcc` (vuelve a ejecutar el comando para descomentar)

#### Buscar y Reemplazar

- **Buscar texto:** `/texto`
- **Buscar siguiente:** `n`
- **Buscar anterior:** `N`

#### Navegación de Buffers

- **Cambiar al buffer anterior:** `:bprev`
- **Cambiar al buffer siguiente:** `:bnext`

#### Visualización de Plugins

- **Nvim-Tree:**
  - **Abrir/ocultar el árbol de archivos:** `Ctrl + n`
  - **Navegar por el árbol de archivos:** `hjkl` (dentro de Nvim-Tree)
  - **Crear nuevo archivo:** `a`
  - **Eliminar archivo:** `d`
  - **Renombrar archivo:** `r`

- **Telescope:**
  - **Buscar archivos:** `Ctrl + p`
  - **Buscar texto en archivos:** `Ctrl + f`
  - **Buscar en buffers:** `Ctrl + b`
  - **Buscar en comandos:** `:Telescope commands`

#### Otros Atajos

- **Guardar archivo:** `:w`
- **Salir de Neovim:** `:q`
- **Guardar y salir:** `:wq`
- **Ir al inicio de la línea:** `0`
- **Ir al final de la línea:** `$`
- **Ir a la línea superior:** `k`
- **Ir a la línea inferior:** `j`

