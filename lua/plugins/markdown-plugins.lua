
return {

    -- Plugin vim-markdown para mejorar la edición de archivos Markdown
    {
        "preservim/vim-markdown",
        ft = { "markdown" }, -- Cargar solo en archivos .md
        config = function()
            -- Deshabilitar el plegado automático
            vim.g.vim_markdown_folding_disabled = 1
            -- Otras opciones de vim-markdown si necesitas
        end,
    },

    -- Plugin glow.nvim para previsualizar Markdown en la terminal
    {
        "ellisonleao/glow.nvim",
        cmd = "Glow", -- Cargar solo cuando ejecutas el comando :Glow
        config = function()
            require("glow").setup {
                width_ratio = 1, -- Ajustar el tamaño de la previsualización
                height_ratio = 0.8,
                border = "rounded", -- Añadir borde redondeado a la previsualización
            }
        end,
    },

    -- Plugin vim-table-mode para mejorar la visualización de tablas en Markdown
    {
        "dhruvasagar/vim-table-mode",
        ft = { "markdown" }, -- Cargar solo en archivos .md
        config = function()
            vim.g.table_mode_corner = '|'
            -- Opcional: Ajustar más configuraciones para la visualización de tablas
        end,
    },

    -- Plugin headlines.nvim para mejorar el estilo de los encabezados
    {
        "lukas-reineke/headlines.nvim",
        ft = { "markdown" }, -- Cargar solo en archivos markdown
        config = function()
            require('headlines').setup {
                markdown = {
                    headline_highlights = {
                        "Headline1", "Headline2", "Headline3", "Headline4", "Headline5", "Headline6",
                    },
                    codeblock_highlight = "CodeBlock",  -- Estilo para bloques de código
                    dash_highlight = false, -- Evitar líneas feas entre encabezados
                    quote_highlight = "Quote", -- Estilo para citas
                    fat_headlines = false,  -- Desactivar encabezados con bordes grandes
                },
            }
            
            -- Colores personalizados para los encabezados
            vim.cmd([[
                highlight Headline1 guibg=#282c34 gui=bold
                highlight Headline2 guibg=#2c323c gui=bold
                highlight Headline3 guibg=#3e4451 gui=bold
                highlight Headline4 guibg=#4b5263 gui=bold
                highlight Headline5 guibg=#5c6370 gui=bold
                highlight Headline6 guibg=#636d83 gui=bold
                highlight CodeBlock guibg=#1e222a guifg=#abb2bf
                highlight Quote guifg=#98c379
            ]])
        end,
    },

}


