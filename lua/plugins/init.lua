-- ~/.config/nvim/lua/plugins/init.lua

-- para importar alpha.lua desde .


require('plugins.alpha')
require('plugins.themes')


return {

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



    -- GitHub Copilot
    {
        'github/copilot.vim',
        config = function()
            -- Opcional: Configuración adicional para GitHub Copilot
            vim.g.copilot_filetypes = {
                markdown = true,
                -- Puedes añadir más tipos de archivos si es necesario
            }
        end
    },

    -- nvim-web-devicons
    {
        'nvim-tree/nvim-web-devicons',
    },

    {
        'onsails/lspkind-nvim',
        config = function()
            -- No es necesario configurar nada aquí, pero puedes añadir configuraciones personalizadas si lo deseas
        end
    },

    --  vim-commentary
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

    -- nvim-tree.lua
    {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' }, -- Iconos para nvim-tree
        config = function()
            require('nvim-tree').setup({
                update_focused_file = {
                    enable = true,
                    update_cwd = true,
                },
                view = {
                    width = 30,
                    side = 'left',
                    -- Auto-resize y auto-close han sido eliminados
                },
                filters = {
                    dotfiles = false,
                },
                git = {
                    enable = true,
                    ignore = false,
                },
                renderer = {
                    icons = {
                        show = {
                            git = true,
                            folder = true,
                            file = true,
                        },
                    },
                    highlight_git = true,
                    highlight_opened_files = 'name',
                },
                actions = {
                    open_file = {
                        -- quit_on_open = true, -- Cierra el árbol al abrir un archivo
                    },
                },
            })
        end
    },

    -- Plugin Polyglot
    {
        'sheerun/vim-polyglot',
        -- Polyglot no requiere configuración adicional por defecto
    },

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


        -- nvim-treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',  -- Actualiza los parsers cuando se instala
        config = function()
            require('nvim-treesitter.configs').setup({
                -- Asegúrate de que los parsers necesarios estén instalados
                ensure_installed = { "c", "cpp", "javascript", "html", "css", "go", "rust" },
                -- Habilita el resaltado de sintaxis basado en Tree-sitter
                highlight = {
                    enable = false,  -- Habilita el resaltado de sintaxis
                    additional_vim_regex_highlighting = false,  -- Desactiva el resaltado de sintaxis basado en regex
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

                -- Opcional: Configuración para el complemento `playground` para depurar árboles sintácticos
                playground = {
                    enable = true,
                    disable = {},
                    updatetime = 25, -- Actualiza el playground cada 25 ms
                    persist_queries = false, -- Guarda las consultas para la depuración
                },

                -- Opcional: Configuración para el complemento `textobjects`
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,  -- Permite la selección basada en el contexto
                        keymaps = {
                            ['aa'] = '@parameter.outer',  -- Selecciona parámetros
                            ['ia'] = '@parameter.inner',  -- Selecciona el contenido de un parámetro
                            ['af'] = '@function.outer',  -- Selecciona funciones
                            ['if'] = '@function.inner',  -- Selecciona el contenido de una función
                        },
                    },
                },
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


    -- nvim-lspconfig
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')

            -- Configuración de servidores LSP
            lspconfig.tsserver.setup {}  -- Ejemplo para TypeScript/JavaScript
            -- lspconfig.pyright.setup {}   -- Ejemplo para Python
            lspconfig.lua_ls.setup {}  -- Ejemplo para Lua

            -- Puedes agregar más servidores LSP aquí
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





    -- nvim-cmp
    {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',      -- Fuente de completado para LSP
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
                    ['<C-e>'] = cmp.mapping.abort(),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'buffer' },
                    { name = 'path' },
                }),
                formatting = {
                    format = lspkind.cmp_format({
                        with_text = true,
                        maxwidth = 50,  -- Ajusta el ancho máximo de los ítems de la lista
                    })
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
            local npairs = require('nvim-autopairs')
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

    -- vim-closetag
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


}

