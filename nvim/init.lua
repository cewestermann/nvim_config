-- [[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first 
-- is called; otherwise, it will default to "\"

vim.g.mapleader = ","
vim.g.localleader = "\\"

-- Moving between panes : <Ctrl-w> <direction>

-- MAPPINGS
-- Diagnostics is also referred to as linting
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Mappings to be mapped only after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts) -- Go to declaration
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts) -- Go to definition
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts) -- Show information when hovering
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts) -- Go to implementation
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts) -- Go to help
end


-- IMPORTS
require('vars')    -- Variables
require('opts')    -- Options
require('keys')    -- Keymaps
require('plug')    -- Plugins

-- PLUGINS
local lsp_flags = {
  debounce_text_changes = 150,
}

require'lspconfig'.pyright.setup{
  on_attach = on_attach,
  flags = lsp_flags,
}
