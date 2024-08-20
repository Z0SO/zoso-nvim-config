-- Temas



return {
	-- Tema Dracula
	{
		'dracula/vim',
		as = 'dracula',
		config = function()
			vim.cmd('colorscheme dracula')
		end
	},

	-- Tema One
	{
		'joshdick/onedark.vim',
		as = 'onedark',
		config = function()
			vim.cmd('colorscheme onedark')
		end
	},
	
	-- Tema Gotham
	{
		'whatyouhide/vim-gotham',
        config = function()
            vim.cmd('colorscheme gotham')
        end
    },


}
