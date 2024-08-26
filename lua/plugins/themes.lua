-- Temas



return {
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

	-- Tema One
	{
		'joshdick/onedark.vim',
		as = 'onedark',
		config = function()
			-- vim.cmd('colorscheme onedark')
		end
	},

	-- Tema Gotham
	{
		'whatyouhide/vim-gotham',
        config = function()
            vim.cmd('colorscheme gotham')
        	vim.opt.background = 'dark'
		end
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

}
