require('plugins.alpha')
require('plugins.themes')
require('plugins.lsp.init')
require('plugins.tailwind-plugins')

require('plugins.markdown-plugins')

return {



    -- nvim-treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',  -- Actualiza los parsers cuando se instala
        config = function()
            -- Detección de archivos .conf para Hyprland, Waybar, Mako, y Kitty
            vim.filetype.add {
                extension = { rasi = 'rasi' },  -- Archivos .rasi como los de rofi
                pattern = {
                    ['.*/waybar/config'] = 'jsonc',
                    ['.*/mako/config'] = 'dosini',
                    ['.*/kitty/*.conf'] = 'bash',
                    ['.*/hypr/.*%.conf'] = 'hyprlang', -- Resaltar archivos .conf de Hyprland
                },
            }

            require('nvim-treesitter.configs').setup({
                -- Asegúrate de que los parsers necesarios estén instalados
                ensure_installed = { 
                    "c", "cpp", "javascript", "html", "css", "go", "rust", 
                    "ini", "hyprlang", "json", "lua", "python", "svelte", 
                    "typescript", "tsx", "yaml", "bash", "dockerfile", "jsonc",
                },
                -- Habilita el resaltado de sintaxis basado en Tree-sitter
                highlight = {
                    enable = true,  -- Habilita el resaltado de sintaxis
                    additional_vim_regex_highlighting = false,  -- Desactiva el resaltado basado en regex
                },
                -- Configuración para la indentación automática
                indent = {
                    enable = true,  -- Habilita la indentación automática
                },
                -- Configuración opcional para el refactor y otras características
                refactor = {
                    highlight_definitions = { enable = true },
                    highlight_current_scope = { enable = true },
                },
                -- Playground para depurar árboles sintácticos
                playground = {
                    enable = true,
                    disable = {},
                    updatetime = 25, -- Actualiza el playground cada 25 ms
                    persist_queries = false, -- No guarda las consultas
                },
                -- Configuración para `textobjects`
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,  -- Permite la selección basada en el contexto
                        keymaps = {
                            ['aa'] = '@parameter.outer',  -- Selecciona parámetros
                            ['ia'] = '@parameter.inner',  -- Selecciona el contenido de un parámetro
                            ['af'] = '@function.outer',   -- Selecciona funciones
                            ['if'] = '@function.inner',   -- Selecciona el contenido de una función
                        },
                    },
                },
            })
        end
    },

     -- vim-commentary
     {
         'tpope/vim-commentary',
         config = function()
             -- Opcional: Configuración específica para vim-commentary
             -- para que tenga en cuenta comentarios en archivos .svelte
             vim.cmd [[
               autocmd FileType svelte setlocal commentstring=/*\ %s\ */
               autocmd FileType svelte setlocal commentstring=//\ %s
               autocmd FileType svelte setlocal commentstring=<!--\ %s\ -->
             ]]
         end
     },
    -- comment ft plugin
    -- {
    --     'numToStr/Comment.nvim',
    --     config = function()
    --         require('Comment').setup({
    --             padding = true,  -- Añade espacios alrededor de los comentarios
    --             mapping = '<leader>/',  -- Mapeo para comentarios
    --         })
    --     end
    -- },


    {
      'eandrju/cellular-automaton.nvim',
      config = function()
        -- Aquí puedes agregar una keymap para iniciar la animación
        vim.keymap.set("n", "<leader>cmr", "<cmd>CellularAutomaton make_it_rain<CR>")
      end
    },



    -- Plugin para manejar pestañas
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons', -- Asegúrate de tener nvim-web-devicons
        config = function()
            require("bufferline").setup{
                options = {
                    numbers = "none", -- 'ordinal' | 'buffer_id' | 'both' | function
                    close_command = "bdelete! %d", -- Comando para cerrar pestañas
                    right_mouse_command = "bdelete! %d", -- Cierre con click derecho
                    left_mouse_command = "buffer %d", -- Mover pestaña con click izquierdo
                    middle_mouse_command = nil, -- No usar middle click
                    indicator = {
                        icon = '▎', -- Símbolo de indicador
                    },
                    show_buffer_icons = true, -- Mostrar íconos de buffers
                    show_close_icon = false, -- No mostrar ícono de cerrar
                    separator_style = "thin", -- 'slant' | 'thick' | 'thin'
                }
            }
        end
    },



    -- Plugin para Discord Rich Presence
    {
      'andweeb/presence.nvim',
      config = function()
        require("presence").setup({
          -- Opciones generales
          auto_update = true,
          neovim_image_text = "Neovim",
          main_image = "neovide",
          client_id = "793271441293967371", -- Reemplaza con tu ID de cliente si es necesario
          log_level = nil,
          debounce_timeout = 10,
          enable_line_number = false,
          blacklist = {},
          buttons = true,
          show_time = true,

          -- Opciones de texto para Rich Presence
          editing_text = "Editando %s",
          file_explorer_text = "Navegando en %s",
          git_commit_text = "Committeando cambios",
          plugin_manager_text = "Gestionando plugins",
          reading_text = "Leyendo %s",
          workspace_text = "Trabajando en %s",
          line_number_text = "Línea %s de %s",
        })
      end
    },
  -- vim-expand-region
    {
        'terryma/vim-expand-region',
        config = function()
            -- Opcional: Configuración específica para vim-expand-region
        end
    },
 

    -- Para visualizacion de tablas

    {
        "tpope/vim-dadbod",
        requires = {
            "kristijanhusak/vim-dadbod-ui",
            "kristijanhusak/vim-dadbod-completion"
        },

        config = function()
            -- Configuración opcional de vim-dadbod-ui
            vim.g.dbs = {
                sqlite = 'sqlite://Documents/repos/G10-ImplementacionCU/db.sqlite3',
            }
            -- Mapeos opcionales
            vim.api.nvim_set_keymap('n', '<leader>db', ':DBUI<CR>', { noremap = true, silent = true })
        end
    },

    {
        'tpope/vim-abolish',
        config = function()
            -- Opcional: Configuración específica para vim-abolish
        end
    },


      --   -- Plugin para íconos de material design
      --   {
      --     'DaikyXendo/nvim-material-icon',
      --   },

      -- Plugin para íconos web-devicons
      {
        'nvim-tree/nvim-web-devicons',
        config = function()
          -- Configuración de nvim-web-devicons
          require('nvim-web-devicons').setup({
            color_icons = true,
            default = true,
          })

          -- Establece el ícono predeterminado si es necesario
          require('nvim-web-devicons').set_default_icon('', '#6d8086')
        end
      },


      -- Plugin para nvim-tree
      {
        'nvim-tree/nvim-tree.lua',
        dependencies = {

            'nvim-tree/nvim-web-devicons'
        },
        config = function()
          -- Configuración de nvim-tree
          require('nvim-tree').setup({
            sync_root_with_cwd = true, -- Sincroniza con el directorio de trabajo actual
            respect_buf_cwd = true,    -- Respeta el directorio del buffer activo
            
            view = {
              side = 'left', -- Configura el árbol para que se abra a la derecha
              width = 30,    -- Ancho de la ventana del árbol (ajusta según tu preferencia)
            },
            update_focused_file = {
              enable = true,       -- Habilita la actualización del archivo actual
              update_cwd = true,   -- Cambia el directorio de trabajo según el archivo activo
              ignore_list = {},    -- Lista de archivos a ignorar (vacía por defecto)
            },

            renderer = {
              icons = {
                show = {
                  file = true,
                  folder = true,
                  folder_arrow = true,
                },
              },
            },
          })
        end,
      },


  -- html css snippets
  
  -- Emmet para HTML y CSS
  { "mattn/emmet-vim" },

  -- Autocompletado
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "saadparwaiz1/cmp_luasnip" },

  -- Snippets
  { "L3MON4D3/LuaSnip" },
  { "rafamadriz/friendly-snippets" },





-----







  -- Plugin para icons de mini
  {
    'echasnovski/mini.icons',
    config = function()
      -- Configuración opcional para mini.icons
    end
  },


    -- para sintaxis de svelte y javascript

    -- Vim Javascript Syntax
    {
        'pangloss/vim-javascript',
        ft = { 'javascript', 'javascriptreact', 'svelte' }, -- Opcionalmente añade 'svelte' si trabajas con Svelte
    },


    -- -- vim-sleuth
    -- {
    --     'tpope/vim-sleuth',
    --     config = function()
    --         -- Opcional: Configuración específica para vim-sleuth
    --     end
    -- },

    -- indenline
    {
        'Yggdroot/indentLine',
        config = function()
            vim.g.indentLine_char = ' '
            vim.g.indentLine_enabled = 1
            vim.g.indentLine_setColors = 0
            vim.g.indentLine_color_term = 239
            vim.g.indentLine_color_gui = '#2a2a2a'
        end
    },


    -- Vim-Signify
    {
        'mhinz/vim-signify',
        config = function()
            vim.g.signify_sign_add = ''
            vim.g.signify_sign_change = ''
            vim.g.signify_sign_delete = ''
        end
    },

    {
        'easymotion/vim-easymotion',
        config = function()
            -- Configuración personalizada aquí
            vim.g.EasyMotion_leader_key = '<Leader><Leader>'
        end
    },


    {
            'folke/which-key.nvim',
            event = "VeryLazy",
            config = function()
                require("which-key").setup {}
            end
    },


      {
        "github/copilot.vim",
        config = function()
          vim.g.copilot_filetypes = {
            markdown = true,
            -- Añade otros tipos de archivo que desees
          }
          -- Mapeos en modo inserción
          vim.api.nvim_set_keymap("i", "<C-Space>", "<Tab>", { expr = true, silent = true })
          
          -- Mapeos en modo normal
          vim.api.nvim_set_keymap("i", "<C-S>", "<Plug>(copilot-show)", { noremap = false, silent = true })
          vim.api.nvim_set_keymap("i", "<C-N>", "<Plug>(copilot-next)", { noremap = false, silent = true })
          vim.api.nvim_set_keymap("i", "<C-P>", "<Plug>(copilot-prev)", { noremap = false, silent = true })
        end,
      },

    --lspkind-nvim es un plugin que añade iconos a las sugerencias de autocompletado
    {
        'onsails/lspkind-nvim',
        config = function()
            -- No es necesario configurar nada aquí, pero puedes añadir configuraciones personalizadas si lo deseas
        end
    },



    -- -- Plugin Polyglot
    -- {
    --     'sheerun/vim-polyglot',
    --     -- Polyglot no requiere configuración adicional por defecto
    -- },

    -- Barra de estado Lualine
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'auto', -- Cambia el tema si es necesario
                    section_separators = { left = '', right = '' },
                    component_separators = { left = '', right = '' },
                },
                sections = {
                    lualine_a = { 'mode' },
                    lualine_b = { 'branch', 'diff', 'diagnostics' },
                    lualine_c = { 'filename' },
                    lualine_x = { 'encoding', 'fileformat', 'filetype' },
                    lualine_y = { 'progress' },
                    lualine_z = { 'location' },
                },
                extensions = { 'fugitive' }
            })
        end
    },


    {
        'mg979/vim-visual-multi',
        branch = 'master',
        config = function()
            -- Opciones de configuración personalizadas
            vim.g.VM_leader = '<C-n>'  -- Cambia el líder para las múltiples selecciones
        end
    },



    -- nvim-autopairs
    {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup({
                disable_filetype = { "TelescopePrompt", "vim" },
                enable_check_bracket_line = false,
                enable_afterquote = true,
            })
        end
    },



    -- Telescope y sus dependencias
    {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('telescope').setup({
                defaults = {
                    file_ignore_patterns = { "node_modules", ".git/" },
                    layout_strategy = "vertical",
                    layout_config = {
                        vertical = {
                            width = 0.9,
                            height = 0.8,
                            preview_height = 0.5,
                        },
                    },
                    mappings = {
                        i = {
                            ["<C-n>"] = require('telescope.actions').move_selection_next,
                            ["<C-p>"] = require('telescope.actions').move_selection_previous,
                        },
                    },
                },
                pickers = {
                    find_files = {
                        hidden = true,
                    },
                },
                extensions = {
                    -- Aquí puedes configurar extensiones si es necesario
                },
            })

            -- Cargar extensiones si se usan
            -- require('telescope').load_extension('fzy_native') -- Ejemplo de carga de una extensión
        end
    },


    -- vim-surround
    {
        'tpope/vim-surround',
        event = 'VeryLazy',
	-- para utilizarlo -> selecciona la palabara y presiona S y el simbolo que lo quieres surroundear.
    },

    {
        'alvan/vim-closetag',
        event = 'InsertEnter',
        config = function()
            -- Configuración opcional para vim-closetag
            vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml'
            vim.g.closetag_xhtml_filenames = '*.xhtml,*.jsx'
            vim.g.closetag_filetypes = 'html,xhtml,phtml'
            vim.g.closetag_xhtml_filetypes = 'xhtml,jsx'
            vim.g.closetag_emptyTags_caseSensitive = 1
            vim.g.closetag_regions = {
                ['typescript.tsx'] = 'jsxRegion,tsxRegion',
                ['javascript.jsx'] = 'jsxRegion',
            }
            vim.g.closetag_shortcut = '>'
            vim.g.closetag_close_shortcut = '<leader>>'
        end,
    },
    
    -- Tailwind CSS Colorizer for nvim-cmp
    {
        "roobert/tailwindcss-colorizer-cmp.nvim",
        config = function()
            require("tailwindcss-colorizer-cmp").setup({
                color_square_width = 2,  -- Ajusta el ancho del cuadrado de color en el autocompletado
            })
        end
    },

    -- Configuración para nvim-cmp
    {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-buffer',        -- Fuente de completado para el buffer
            'hrsh7th/cmp-path',          -- Fuente de completado para el sistema de archivos
            'hrsh7th/cmp-cmdline',       -- Fuente de completado para la línea de comandos
            'L3MON4D3/LuaSnip',          -- Motor de snippets
            'saadparwaiz1/cmp_luasnip',  -- Fuente de completado para LuaSnip
            'onsails/lspkind-nvim',      -- Iconos para los ítems de la lista
            'windwp/nvim-autopairs',     -- Autocompletado de pares de caracteres
        },
        config = function()
            local cmp = require('cmp')
            local lspkind = require('lspkind')
            local npairs = require('nvim-autopairs')
            local luasnip = require('luasnip')

            -- Configuración de nvim-cmp
            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)  -- Usa LuaSnip para snippets
                    end,
                },
          
                mapping = cmp.mapping.preset.insert({
                    ['<C-n>'] = cmp.mapping.select_next_item(),  -- Selecciona el siguiente ítem
                    ['<C-p>'] = cmp.mapping.select_prev_item(),  -- Selecciona el ítem anterior
                    ['<C-y>'] = cmp.mapping.confirm({ select = true }),  -- Confirma el ítem seleccionado
                    ['<C-e>'] = cmp.mapping.abort(),  -- Cancela la completación
                    ['<C-Space>'] = cmp.mapping.complete(),
                }),
                sources = cmp.config.sources({
                    { name = 'luasnip' },  -- Fuente de completado para snippets
                    { name = 'buffer' },   -- Fuente de completado para el contenido del buffer
                    { name = 'path' },     -- Fuente de completado para rutas de archivos
                }),
                formatting = {
                    format = lspkind.cmp_format({  -- Opcional: agrega íconos para los ítems
                        with_text = true,
                        maxwidth = 50,
                    }),
                },
                experimental = {
                    ghost_text = true,  -- Muestra un texto fantasma (opcional)
                },
            })

            -- Configuración para el autocompletado en la línea de comandos
            cmp.setup.cmdline('/', {
                sources = {
                    { name = 'buffer' }
                }
            })

            cmp.setup.cmdline(':', {
                sources = cmp.config.sources({
                    { name = 'path' }
                }, {
                    { name = 'cmdline' }
                })
            })

            -- Configuración para nvim-autopairs
            npairs.setup({
                disable_filetype = { "TelescopePrompt", "vim" },
                enable_check_bracket_line = false,
                enable_afterquote = true,
            })

            -- Integración de nvim-autopairs con nvim-cmp
            cmp.event:on('confirm_done', function()
                npairs.completion.on_confirm_done()
            end)
        end
    },
    
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'onsails/lspkind-nvim',
    'windwp/nvim-autopairs',

    -- TailwindCSS colorizer (opcional)
    -- 'raiha/tailwindcss-colorizer-cmp.nvim',
    
    -- instalaremos un color para que resalten las clases de tailwind en el codigo
    {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end
    },


}
