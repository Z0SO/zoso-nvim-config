
-- ~/.config/nvim/lua/plugins/tailwind-plugins.lua

return {
    -- Plugin para el servidor de lenguaje de Tailwind CSS
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").tailwindcss.setup({})
        end,
    },

    -- Plugin para el resaltado de colores de Tailwind CSS
    {
        "themaxmarchuk/tailwindcss-colors.nvim",
        config = function()
            require("tailwindcss-colors").setup()
        end,
    },
}
