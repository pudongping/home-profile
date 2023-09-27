return {
	{
		"olexsmir/gopher.nvim",
		ft = "go",
		keys = {
			{ "<leader>gsj", "<cmd> GoTagAdd json <cr>", desc = "Add json struct tags" },
			{ "<leader>gsy", "<cmd> GoTagAdd yaml <cr>", desc = "Add yaml struct tags" },
		},
		config = function(_, opts)
			require("gopher").setup(opts)
		end,
		build = function()
			vim.cmd([[silent! GoInstallDeps]])
		end,
	},
}
