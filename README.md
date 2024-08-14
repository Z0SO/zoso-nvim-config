


### 1. **Instala `lazy.nvim`**

Abre tu terminal y ejecuta:
```bash
git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/site/pack/packer/start/lazy.nvim
```

### 2. **Crea la configuración de Neovim**




```lua
-- ~/.config/nvim/init.lua

-- Asegúrate de que 'lazy.nvim' se carga antes de todo
vim.opt.runtimepath:append(vim.fn.stdpath('data') .. '/site/pack/packer/start/lazy.nvim')

require('lazy').setup({
    -- Aquí puedes listar tus plugins
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    },
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    -- Añade aquí más plugins
})

-- Opcional: Configura opciones básicas
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
```

### 3. **Estructura del directorio**


```plaintext
~/.config/nvim/
├── init.lua
└── lua/
    ├── plugins/
    │   └── init.lua
    └── core/
        ├── options.lua
        ├── keymaps.lua
        └── autocmds.lua
```

### 4. **Configura los plugins**

En `~/.config/nvim/lua/plugins/init.lua`, puedes agregar configuraciones específicas para cada plugin. Aquí hay un ejemplo básico:

```lua
-- ~/.config/nvim/lua/plugins/init.lua

-- Configuración para nvim-treesitter
require('nvim-treesitter.configs').setup({
    ensure_installed = "maintained",
    highlight = {
        enable = true,
    },
})

-- Configuración para nvim-cmp
local cmp = require('cmp')
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
})
```

### 5. **Configuración adicional**

Si quieres agregar más configuraciones y plugins, simplemente sigue agregando entradas en la sección de `require('lazy').setup({ ... })` en `init.lua` y crea configuraciones específicas en los archivos dentro de `lua/plugins/`.

¡Con esto deberías tener una configuración básica lista para instalar y configurar plugins en Neovim usando `lazy.nvim`! Si necesitas ayuda con algún plugin en particular o más detalles, no dudes en preguntar.
