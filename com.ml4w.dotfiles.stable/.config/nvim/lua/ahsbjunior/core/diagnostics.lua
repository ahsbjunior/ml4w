vim.diagnostic.config({
	-- E / W / I / H na coluna lateral
	signs = true,

	-- Sublinha o trecho problemático
	underline = true,

	-- Mostra a mensagem na própria linha
	virtual_text = {
		current_line = true,
		spacing = 2,
		source = "if_many",
	},

	-- Ordena Error antes de Warning, etc.
	severity_sort = true,

	-- Não atualiza enquanto você está digitando
	update_in_insert = false,

	-- Configuração da janela flutuante
	float = {
		border = "rounded",
		source = "if_many",
		header = "",
		prefix = "",
	},
})
