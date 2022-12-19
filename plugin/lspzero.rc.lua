local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.set_preferences({
    set_lsp_keymaps=false
})

lsp.on_attach(function(client, bufnr)
local opts = {buffer = bufnr, remap=false}
    local bind = vim.keymap.set
    bind("n", "rn", function() vim.lsp.buf.rename() end, opts)
    bind("n", "K", function() vim.lsp.buf.hover() end, opts)
    bind("n", "<C-j>", function() vim.diagnostic.goto_next() end, opts)
    bind("n", "<C-k>", function() vim.diagnostic.goto_prev() end, opts)
    bind("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
end
)

-- when renaming across files, it will open it in buffers. Use :wa to save across all buffers
-- %bd|e# will close the open buffers where the renamed files are
vim.api.nvim_create_user_command('Wa', 'wa|%bd|e#', { nargs = 0 })


-- show the diagnostic without having to hover over it
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    update_in_insert = false,
    virtual_text = { spacing = 4, prefix = "●" },
    severity_sort = true,
}
)

lsp.setup()
