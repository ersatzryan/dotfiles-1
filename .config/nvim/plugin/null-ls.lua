local null_ls = require("null-ls")

null_ls.setup({
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		end
	end,

	sources = {
		null_ls.builtins.diagnostics.standardrb,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.standardrb,
		null_ls.builtins.formatting.stylua,
	},
})
