
-- ~/.config/nvim/lua/plugins/lsp/init.lua

-- Configura tus plugins LSP aquí
return {
  -- LSP Config
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('plugins.lsp.config') -- Importa la configuración de LSP
    end
  },
  -- Agrega más plugins relacionados con LSP aquí
}
