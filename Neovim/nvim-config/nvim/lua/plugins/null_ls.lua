return {
	"jose-elias-alvarez/null-ls.nvim", -- 通过 LSP 协议进行代码的格式化操作（后面此库将不再维护）
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {
		"jay-babu/mason-null-ls.nvim",
	},
	config = function()
		local tools = {
			"black", -- 这是 python 的格式化代码工具
			-- "goimports", -- golang 的格式化代码工具
		}

		require("mason-null-ls").setup({
			ensure_installed = tools,
			handlers = {},
		})

		require("null-ls").setup({
			sources = {},
		})
	end,
}
