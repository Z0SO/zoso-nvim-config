-- ~/.config/nvim/lua/plugins/init.lua

return {
    -- Tema Gotham
    {
        'whatyouhide/vim-gotham',
        config = function()
            vim.cmd('colorscheme gotham')
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
            require('alpha').setup(require('alpha.themes.startify').config)
        end
    },
}

