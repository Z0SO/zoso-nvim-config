
-- ~/.config/nvim/lua/plugins/lsp/config.lua

local lspconfig = require('lspconfig')

-- Configuración básica para el servidor LSP de Python
lspconfig.pyright.setup({
  on_attach = function(client, bufnr)
    -- Mapea comandos de LSP a atajos en Neovim
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  end
})

-- Configuración adicional para otros servidores LSP

-- Para javascript/typescript con eslint:
lspconfig.eslint.setup({
  on_attach = function(client, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  end
})
