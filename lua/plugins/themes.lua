-- Temas
return {
    {
        "shaunsingh/nord.nvim",
        config = function()
            -- Configuración del tema
            vim.cmd("colorscheme nord")
        end,
    },

    -- Badacadabra/vim-archery
    {
        "Badacadabra/vim-archery",
        config = function()
            -- Configuración del tema
            vim.cmd("colorscheme archery")
        end,
    },

    -- Tema Falcon: fenetikm/falcon
    {
        "fenetikm/falcon",
        config = function()
            -- Configuración del tema
            vim.cmd("colorscheme falcon")
        end,
    },

	-- Tema Dracula
	{
		'dracula/vim',
		as = 'dracula',
		config = function()
			-- vim.cmd('colorscheme dracula')
		end
	},
	-- tema srcery-vim
	{
		'srcery-colors/srcery-vim',
		as = 'srcery',
		config = function()
			-- vim.cmd('colorscheme srcery')
		end
	},

    --Tema nanotech/jellybeans.vim
    {
        "nanotech/jellybeans.vim",
        as = "jellybeans",
        config = function()
            -- Configuración del tema
            vim.cmd("colorscheme jellybeans")
        end,
    },

	-- Tema gruvbox
	{
		'morhetz/gruvbox',
		as = 'gruvbox',
		config = function()
			-- vim.cmd('colorscheme gruvbox')
		end
	},
	
	-- Tema github
	{
		"projekt0n/github-nvim-theme",
		as = 'github',
		config = function()
			vim.cmd('colorscheme github_dark_default')
        end


	},

	-- Tema One
	{
		'joshdick/onedark.vim',
		as = 'onedark',
		config = function()
			-- vim.cmd('colorscheme onedark')
		end
	},

    -- Tema jaredgorski/SpaceCamp
    {
        "jaredgorski/SpaceCamp",
        config = function()
            -- vim.cmd("colorscheme spacecamp")
        end,
    },

	-- Tema Gotham
	{
		'whatyouhide/vim-gotham',
        config = function()
            vim.cmd('colorscheme gotham')
        	vim.opt.background = 'dark'
		end
    },

	-- Tema minimalist
    {
        "dikiaap/minimalist",
        config = function()
            -- Configuración del tema
            vim.opt.termguicolors = true
            -- vim.cmd("colorscheme minimalist")
			vim.g.airline_theme = 'minimalist'
            vim.g.airline_powerline_fonts = 1
            vim.g['airline#extensions#tabline#enabled'] = 1
        end,
    },

    -- Tema iceberg
    {
        "cocopon/iceberg.vim",
        config = function()
            -- vim.cmd("colorscheme iceberg")
        end,
    },

    -- Tema tokyonight
    {
        "folke/tokyonight.nvim",
        config = function()
            vim.g.tokyonight_style = "night"
            vim.g.tokyonight_italic_functions = true
            vim.g.tokyonight_italic_variables = true
            vim.g.tokyonight_italic_keywords = true
            vim.g.tokyonight_italic_comments = true
            vim.g.tokyonight_italic_strings = true
            vim.g.tokyonight_italic_types = true
            vim.g.tokyonight_transparent = false
            vim.g.tokyonight_hide_inactive_statusline = true
            vim.g.tokyonight_dark_sidebar = true
            vim.g.tokyonight_dark_float = true
            vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
            -- vim.cmd("colorscheme tokyonight")
        end,
    },


    -- Tema sonokai
    {
        "sainnhe/sonokai",
        config = function()
            vim.cmd("colorscheme sonokai") 
        end,
    },


	-- Tema Oxocarbon
	{
		"nyoom-engineering/oxocarbon.nvim",
		config = function()
			vim.opt.background = "dark" -- Puedes cambiar a "light" si prefieres
		  
			-- vim.cmd.colorscheme "oxocarbon"

			-- Si quieres un fondo transparente, agrega esto:

			-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},


    -- Tema Nightfox
    {
        "EdenEast/nightfox.nvim",
        config = function()
            -- Configuración del tema
            require("nightfox").load()
        end,
    },

    -- Tema challenger-deep-theme/vim
    {
        "challenger-deep-theme/vim",
        as = 'challenger_deep',
        
        config = function()
            -- Configuración del tema
            -- vim.cmd("colorscheme challenger_deep")
        end,
    },



}
