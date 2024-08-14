-- ~/.config/nvim/lua/plugins/init.lua

return {
    -- Tema Gotham
    {
        'whatyouhide/vim-gotham',
        config = function()
            vim.cmd('colorscheme gotham')
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
                        quit_on_open = true, -- Cierra el árbol al abrir un archivo
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



        -- Plugin Alpha
    {
        'goolord/alpha-nvim',
        config = function()
        --    require('alpha').setup(require('alpha.themes.startify').config)

		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		vim.api.nvim_set_keymap("n", "<leader>a", "<cmd>Alpha<CR>", { noremap = true, silent = true }) --options to ensure that the mapping is not recursively mapped

		-- Set header
		dashboard.section.header.val = {
			"                                                     ",
    --    	"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
	--		"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
	--		"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
	--		"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
	--		"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
	--		"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			 "                                                     ",
		 "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡤⠶⠒⢋⣉⣭⠷⠶⠶⠒⠂⠀⠀⠀⠀⠀⠈⠉⠉⠙⠒⠶⢤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		 "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⠶⣾⡍⢁⣀⣠⠶⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠑⠶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		 "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠉⣿⣾⣿⣿⣷⣽⣷⣿⠶⠶⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⢦⣄⠀⠀⠀⠀⠀⠀",
		 "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣶⡿⠀⠀⣿⣿⣿⣿⣿⣿⣿⣧⣌⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠺⣝⠶⡀⠀⠀⠀",
		 "⠀⠀⠀⠀⠀⠀⠀⠀⣰⠛⣿⣿⣷⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣶⡀⠢⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣷⡙⠶⣄⠀",
		 "⠀⠀⠀⠀⠀⠀⠀⣰⡇⠀⣿⣿⣿⣿⣿⡟⠉⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡿⣺⣀⣀⡀⠄⠀⠀⠀⠀⠀⠀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣨⣿⣢⡘⠦",
		 "⠀⠀⠀⠀⠀⢀⣴⣿⣇⠀⣸⣿⡿⠟⠁⠀⢀⡏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣾⡀⣀⡀⠠⠀⠀⠚⢤⠂⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⣀⣷⣿⡓⠆⠀",
		 "⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⡟⠉⠀⠀⠀⠀⣾⠃⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣗⣦⣴⡜⣿⣇⢀⢉⠀⣀⣨⣀⣤⣴⣴⣿⣽⣽⣿⡿⠂⠀",
		 "⠀⠀⠀⣼⣽⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⣼⡿⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⣿⣿⣯⣷⣿⣿⣿⣿⡿⣿⢁⣤⣾⣷",
		 "⠀⠀⣴⢩⣿⣯⣿⠃⠀⠀⠀⠀⠀⠀⢠⢏⡇⠀⠀⡿⢹⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⣻⣤⣾⣿⣿⣿⣿",
		 "⠀⢰⢯⠋⣜⣾⠃⠀⠀⠀⠀⠀⠀⠀⡾⢸⠁⡄⣴⡇⠘⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⠀⣿⣿⣼⣹⠇⠀⠀⠀⠀⠀⠀⠀⢠⠃⣿⢰⣿⣿⡇⠀⢸⣿⣿⣿⣿⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⢸⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⣿⣿⣿⣿⣧⠀⢸⣿⣿⡏⣿⠀⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⢸⣻⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⢀⡇⠀⣿⣿⣿⣿⣿⣧⣾⣿⣿⠀⣿⠀⠀⠏⣿⣿⣿⣿⣿⣿⣿⣏⣽⣿⣿⣿⠋⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⢸⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⣸⠀⢰⣿⣿⢙⢻⣿⣿⠻⣏⣿⠀⣿⡀⣤⣀⠋⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⣿⣿⣿⡇⠀⠀⠀⠀⠠⠤⣶⣴⣿⠀⢸⣿⣿⠀⢸⣏⠁⠈⢻⡟⠀⣷⣇⣿⣿⣾⣸⣿⣿⣿⣿⣿⣿⣦⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⣿⢻⣿⠁⠀⠀⠀⠀⠀⠀⠀⠉⡏⠀⢸⣿⢻⡀⢸⡏⠀⠠⣶⡇⠀⢻⢻⣿⣿⣽⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⣿⠈⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⢸⣾⠘⣇⠈⡇⠀⠈⢻⠃⠙⠻⡿⣿⣿⣿⡾⢿⣿⣎⣿⣿⣿⣿⣿⣿⣿⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⢹⣦⣽⣿⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⢸⣿⠀⢹⡆⣧⠀⠀⡟⠀⠀⠀⣿⠹⣿⡟⢿⡈⢑⣙⣿⡟⣿⣿⣿⣿⡇⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⠀⢧⡀⣿⡏⠉⢹⣿⣷⣶⣔⠲⣆⠀⠀⣿⠀⠀⢻⣿⡀⢸⡇⠀⠀⠀⠸⡄⢻⣿⠘⢧⡅⡊⢿⡇⣿⣿⣿⣿⠇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⠀⠀⠉⣿⢧⡀⢰⡍⣙⣿⣿⣷⢏⠶⠀⢿⡀⠀⠀⠹⣇⣼⠁⠀⠀⠀⠀⢷⠀⢻⡄⠘⢷⣄⣹⡇⠸⣿⣿⣿⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⠀⠀⠀⣿⠀⠙⠮⣷⣍⡹⠟⢿⣿⡀⠀⠀⠁⠀⠀⠀⢹⡿⢶⣒⣒⣒⣂⣈⡂⠀⠁⠀⠈⢻⣿⡇⠀⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⠀⠀⠀⡿⠀⠀⠀⠀⠈⠙⠳⠶⣟⠁⠀⠀⠀⠀⠀⠀⠀⠐⠛⠛⠛⠛⢻⣿⣿⣿⣶⣦⢤⡀⠹⡇⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣏⡿⠋⠁⠀⠹⣿⣿⣿⣿⣿⣿⣿",
		 "⠀⠀⠠⡟⢊⣁⡤⣖⡋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢲⣤⡽⠿⢿⣿⠿⣿⣷⣗⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⠃⢀⢴⡖⠛⠛⣿⣿⣿⣿⣿⣿⣿",
		 "⠀⠀⠀⣟⣩⠵⠊⠉⢀⣀⠀⢠⡾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠒⠺⠷⢤⣀⡈⠛⠳⠦⣉⣽⣷⣄⣸⣿⣿⣿⣿⣿⣿⡿⢴⣏⣀⣙⠲⠶⢿⣿⣿⣿⣿⣿⣿",
		 "⠀⠀⠀⣿⠀⠐⠓⠒⠉⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠈⠉⠙⠒⠶⠿⠋⠀⠈⣿⣿⣿⣿⣿⣿⣿⡇⢰⠀⠀⠘⠦⡀⢸⣿⣿⣿⣿⣿⣿",
		 "⠀⠀⠀⢸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠖⠚⠉⠁⠀⠀⣀⠔⠃⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⢀⣠⡼⠁⣠⣿⣿⣿⣿⣿⣿",
		 "⠀⠀⠀⠀⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠉⢀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⡴⠛⠉⠁⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿",
		 "⠀⠀⠀⠀⠈⣿⣆⠀⠀⠀⠀⠘⢷⣶⠢⠤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⠀⠀⠀⠀⡄⣿⣿⣷⡄⠀⠀⠀⠀⣿⣄⡀⠀⠀⠉⠛⠒⠤⣄⣀⣀⣀⣀⣤⡾⠃⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣷⣾⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⠀⠀⠀⠀⣇⣿⣿⣿⣿⣦⡀⠀⠀⠀⠳⣅⡀⠀⠀⠀⠠⢤⣤⡄⣠⣤⡶⠛⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⠘⣟⠛⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		 "⠀⠀⠀⢰⣿⣿⣿⣿⡟⣿⣿⣄⠀⠀⠀⠀⠉⠓⠦⣤⣤⣤⣤⠽⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣿⣿⣿⣿⣿⣿⣿⡟⠀⠸⣿⣦⣬⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿",
		 "⠀⠀⠀⢸⢻⣿⣿⣿⡇⠹⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⣿⣟⢿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠘⣻⠇⠈⢿⡉⠉⠉⠛⢿⡇⠀⠤",
		 "⠀⠀⠀⣼⣸⣿⣿⣿⠁⠀⠙⢿⣿⣿⣦⣀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣤⣶⣾⣿⣿⣿⣿⡿⠟⠁⣸⣿⣿⣿⣿⣿⠿⣿⠃⠀⢀⡼⠃⠀⠀⠀⠻⣦⡀⠀⠈⢻⡄⠀",
		 "⠀⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⢀⡿⠃⠀⠉⠛⠛⠛⣻⠟⠉⠀⣠⠋⢙⣿⣿⣿⣿⡟⠋⠀⠀⢰⣿⣿⣟⡸⢸⣿⡷⣿⠀⣠⠞⠀⠀⠀⠀⠀⠀⣿⣿⡀⠀⠈⢳⡄",
		 "⠀⠀⢰⢿⣿⣿⣿⡟⠀⠀⢀⡞⠀⠀⠀⠀⠀⢀⡼⠁⠀⢠⠞⢁⡴⠋⠘⢧⠛⠁⠀⠀⠀⠀⣼⡿⣿⠈⠛⣿⣿⣺⣇⠞⠁⠀⠀⠀⠀⠀⠀⢠⡇⠹⡇⠀⠀⠀⠙",
         "⠀⠀⣾⢸⣿⣿⣿⡇⠀⠀⡾⠀⠀⠀⠀⠀⣠⠞⠀⠀⣠⠏⡰⠋⠀⠀⠀⠈⢧⠀⠀⠀⠀⢰⣿⢣⡿⠀⠐⠛⠽⢽⠃⠀⠀⠀⠀⠀⠀⠀⠀⣼⠀⠀⠁⠀⠀⠀⠀",
		 "⠀⢀⠏⣿⣿⣿⣿⠀⠀⢰⡇⠀⠀⠀⠀⣰⣿⣾⣿⣿⣷⠞⠁⠀⠀⠀⠀⠀⣠⣧⠀⠀⠀⣸⡇⢸⣇⠀⠀⠀⠠⣿⠀⠀⠀⠀⠀⠀⠀⠀⢀⡟⠀⠀⠀⠀⠀⠀⠀",
		 "⠀⣾⠀⣿⣿⢿⣿⠀⠀⢸⠀⠀⠀⠀⣰⣿⣿⣿⣽⡿⠃⠀⠀⠀⠀⠀⠀⣾⡿⠙⢧⡀⢰⡟⠀⢸⠋⠀⠀⠀⢙⡏⠀⠀⠀⠀⠀⠀⠀⠀⣼⠀⠀⠀⠀⠀⠀⠀⠀",
		 "⠀⠏⢰⣿⣿⢸⡏⡆⠀⢸⡄⠀⠀⢀⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⣾⢿⡀⠀⠀⠁⡾⠁⠀⢸⠀⠀⠀⠀⣾⠁⠀⠀⠀⠀⠀⠀⠀⢰⠏⠀⠀⠀⠀⠀⠀⠀⠀",
		 "⠸⠀⣾⣿⣿⢸⣇⠇⠀⠈⣇⠀⠀⣿⣿⣿⣿⠃⣠⣦⡀⠀⠀⠀⢀⡾⠉⠀⠙⢲⣀⣸⠃⠀⠀⢼⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⢀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
			dashboard.button("SPC c", "Go to nvim dotconfig", "<cmd>e ~/.config/nvim/<CR>"),
            dashboard.button("SPC uml", "[UML-PRACTICE] > Ir a UMLPractice", "<cmd>e ~/Documents/repos/UML-Practice<CR>"),
			dashboard.button("l", "Set neovide's transparency to 0.5", "<cmd>let g:neovide_transparency=0.5<CR>"),
			dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end
    },


        -- nvim-treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',  -- Actualiza los parsers cuando se instala
        config = function()
            require('nvim-treesitter.configs').setup({
                -- Asegúrate de que los parsers necesarios estén instalados
                ensure_installed = { "c", "cpp", "python", "lua", "javascript", "html", "css", "go", "rust" },
                
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
    


    -- nvim-lspconfig
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')

            -- Configuración de servidores LSP
            lspconfig.tsserver.setup {}  -- Ejemplo para TypeScript/JavaScript
            lspconfig.pyright.setup {}   -- Ejemplo para Python
            lspconfig.lua_ls.setup {}  -- Ejemplo para Lua

            -- Puedes agregar más servidores LSP aquí
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
        end
    },


}

