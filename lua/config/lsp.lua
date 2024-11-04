local lspconfig = require('lspconfig')

lspconfig.pyright.setup {
	capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "basic",
					 autoImportCompletions = true,
            }
        }
    }
}

lspconfig.clangd.setup {}
lspconfig.jdtls.setup {}
