require("neodev").setup({})
-- require("neoconf").setup({})

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr, preserve_mappings = false})
end)

lsp.setup_servers({'tsserver', 'eslint'})

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

require('lspconfig').cssls.setup({
    settings = {
        css = {
            modules = true
        }
    }
})
lsp.setup()
