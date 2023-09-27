-- 微软收集的所有语言的 lsp：https://microsoft.github.io/language-server-protocol/implementors/servers
-- neovim 官方提供的 lsp 配置示例：https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/server_configurations/gopls.lua
return {
	"neovim/nvim-lspconfig", -- neovim 官方提供的 lsp 插件
	cmd = { "Mason", "Neoconf" },
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim", -- Mason （安装 lsp 的管理工具）
		"williamboman/mason-lspconfig",
		"folke/neoconf.nvim", -- 美化 LSP （默认会创建一个 ~/.config/nvim/.neoconf.json 文件）
		"folke/neodev.nvim", -- 可以正确识别 vim 的一些 api
		{
			"j-hui/fidget.nvim", -- 查看 LSP 的一些进度
			tag = "legacy",
		},
		"nvimdev/lspsaga.nvim", -- 提供了很多好看的窗口，比如说更改名称、跳转定义等 https://nvimdev.github.io/lspsaga/rename/
	},
	config = function()
		local servers = {
			lua_ls = {
				settings = {
					Lua = {
						workspace = { checkThirdParty = false },
						telemetry = { enable = false },
					},
				},
			},
			pyright = {},
			jsonls = {},
			marksman = {},
			volar = {},
			dockerls = {},
			docker_compose_language_service = {},
			bashls = {},
			ocamllsp = {},
			taplo = {},
			ruff_lsp = {},
			clangd = {},
			gopls = {
				-- https://neovim.io/doc/user/lsp.html
				cmd = { "gopls" },
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
				root_dir = vim.fs.dirname(vim.fs.find({ "go.work", "go.mod", ".git" }, { upward = true })[1]),
				settings = {
					gopls = {
						completeUnimported = true, -- 当我们使用一些 package 时，它会自动导入
						usePlaceholders = true, -- 可以在函数参数或者结构体字段中自动添加占位符
						analyses = {
							unusedparams = true, -- 有任何未使用的参数或函数，将会得到一个 warning
						},
					},
				},
			},
		}
		local on_attach = function(_, bufnr)
			-- Enable completion triggered by <c-x><c-o>
			local nmap = function(keys, func, desc)
				if desc then
					desc = "LSP: " .. desc
				end

				vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
			end

			nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
			nmap("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
			nmap("K", "<cmd>Lspsaga hover_doc<CR>", "Hover Documentation")
			nmap("gi", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
			nmap("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")
			nmap("<leader>wa", vim.lsp.buf.add_workspace_folder, "[W]orkspace [A]dd Folder")
			nmap("<leader>wr", vim.lsp.buf.remove_workspace_folder, "[W]orkspace [R]emove Folder")
			nmap("<leader>wl", function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, "[W]orkspace [L]ist Folders")
			nmap("<leader>D", vim.lsp.buf.type_definition, "Type [D]efinition")
			nmap("<leader>rn", "<cmd>Lspsaga rename ++project<cr>", "[R]e[n]ame")
			nmap("<leader>ca", "<cmd>Lspsaga code_action<CR>", "[C]ode [A]ction")
			nmap("<leader>da", require("telescope.builtin").diagnostics, "[D]i[A]gnostics")
			nmap("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
			-- nmap('gr', vim.lsp.buf.references, '[G]oto [R]eferences')
			nmap("<space>f", function() -- 格式化代码
				vim.lsp.buf.format({ async = true })
			end, "[F]ormat code")
		end
		require("neoconf").setup()
		require("neodev").setup()
		require("fidget").setup()
		require("lspsaga").setup()
		require("mason").setup() -- 启用 Mason
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		require("mason-lspconfig").setup({
			ensure_installed = vim.tbl_keys(servers),
		})

		for server, config in pairs(servers) do
			require("lspconfig")[server].setup(vim.tbl_deep_extend(
				"keep", -- 这里通过 keep 会合并下面的两个 table
				{
					on_attach = on_attach,
					capabilities = capabilities, -- 自动补全
				},
				config
			))
		end
	end,
}
