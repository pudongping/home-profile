return {
	{
		"akinsho/bufferline.nvim", -- 可以在每个 buffer 上面显示一个小❎号
		event = "VeryLazy",
		config = true, -- 开启配置
	},
	{
		"lukas-reineke/indent-blankline.nvim", -- 在每个文件中显示对齐的竖线，方便查看对齐
		event = "VeryLazy",
		config = true,
	},
	{
		"lewis6991/gitsigns.nvim", -- 如果项目是通过 git 进行管理的话，会在文件的左边显示不同颜色的竖线作为 git 状态的标记
		event = "VeryLazy",
		config = true,
	},
	{
		"goolord/alpha-nvim", -- 打开 neovim 时，可以显示出比较酷的首页
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},
	{
		"RRethy/vim-illuminate", -- 在文件中，选中了某个重复的词时，所有的重复词都会一并高亮
		event = "VeryLazy",
		config = function()
			require("illuminate").configure()
		end,
	},
}
