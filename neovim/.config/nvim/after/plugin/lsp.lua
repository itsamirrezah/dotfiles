require("neodev").setup({})

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "<leader>gl", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set({ "v", "n" }, "<leader>ff", function() vim.lsp.buf.format() end, opts)
end)

lsp.setup_servers({ 'tsserver', 'eslint' })

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

require('lspconfig').cssls.setup({
    settings = {
        css = {
            modules = true
        }
    }
})
lsp.setup()
