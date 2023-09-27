return {
	{
		"folke/tokyonight.nvim",
		dependencies = {
			"nvim-lualine/lualine.nvim", -- 显示底部比较好看的项目信息
			"nvim-tree/nvim-web-devicons",
			"utilyre/barbecue.nvim", -- 显示文件路径地址
			"SmiteshP/nvim-navic",
		},
		config = function()
			vim.cmd([[colorscheme tokyonight-storm]])
			require("lualine").setup({
				options = {
					theme = "tokyonight",
				},
			})
			require("barbecue").setup({
				theme = "tokyonight",
			})
		end,
	},
}
