return {
	"nvim-telescope/telescope.nvim", -- 提供了很多高级的搜索功能，依赖于'rg' => ripgrep（搜索文件中的内容） fzf （搜索文件名）brew install ripgrep fzf
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	keys = {
		{
			"<leader>?",
			"<cmd>lua require('telescope.builtin').oldfiles()<cr>",
			{ desc = "[?] Find recently opened files" },
		}, -- 查找最近打开的文件
		{ "<leader><space>", "<cmd>lua require('telescope.builtin').buffers({ sort_mru = true })<cr>" }, -- 查找 buffer
		{
			"<leader>/",
			function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end,
		}, -- 快速搜索当前 buffer
		{ "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>" }, -- 查找文件
		{ "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>" }, -- 查找文件中的内容
		{ "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>" },
		{ "<leader>fp", "<cmd>lua require('telescope.builtin').builtin()<cr>" },
		{ "<leader>fm", "<cmd>lua require('telescope.builtin').marks()<cr>" },
		{ "<leader>qf", "<cmd>lua require('telescope.builtin').quickfix()<cr>" },
		{ "<leader>km", "<cmd>lua require('telescope.builtin').keymaps()<cr>" },
		{ "<c-p>", "<cmd>lua require('telescope.builtin').commands()<cr>" },
	},
	config = function() -- 直接从官方文档中抄一下配置文件
		require("telescope").setup({
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
			},
		})
		-- require('telescope').load_extension('fzf')
	end,
}
