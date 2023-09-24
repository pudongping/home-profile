return {
    {
        "rhysd/accelerated-jk",
        keys = {
            -- j k 按住的时间越长，往上或者往下就越快
            { "j", "<Plug>(accelerated_jk_gj)" },
            { "k", "<Plug>(accelerated_jk_gk)" },
        },
    },
    {
        "folke/persistence.nvim",
        keys = {
            { "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]] },
            { "<leader>ql", [[<cmd>lua require("persistence").load({ last = true})<cr>]] }, -- 恢复窗口之前的布局
            { "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]] },
        },
        config = true,
    },
    {
        "windwp/nvim-autopairs", -- 输入某些成对符号时，只需要输入一个（比如，一般在程序中需要输入两个引号将某个字符串包裹起来，使用文本编辑器时，就一定需要输入两个引号，有了这个插件，则只需要输入一个即可）
        event = "VeryLazy",
        opts = {
            enable_check_bracket_line = false,
        },
    },
    {
        "ethanholz/nvim-lastplace", -- 关闭某个文件后，再次打开时，会将光标停留在上次打开某个文件的位置
        config = true,
    },
    {
        -- 还可以在 normal 模式下按一下小写的 `f` 然后输入一个你想要跳转的字母（比如小写字母 `l`），紧接着按 `f` 则可以跳转到下一个，按大写的 `F` 则可以跳转到上一个
        -- 在 normal 模式下，通过斜杠 `/` 搜索时，也可以使用"红色跳转"
        "folke/flash.nvim",
        keys = {
            {
                "s", -- 按小写的 `s` 然后按红色光标字母后则可以快速跳转
                mode = { "n", "x", "o" },
                function()
                    require("flash").jump()
                end,
                desc = "Flash",
            },
            {
                "S", -- 按大写的 `S` 然后按红色光标字母后则可以选择块
                mode = { "n", "o", "x" },
                function()
                    require("flash").treesitter()
                end,
                desc = "Flash Treesitter",
            },
            {
                "r", -- 例子：复制某个单词时的快捷方式：在 normal 模式下，先按一下 `y` 复制，然后按一下 `r` 进入 flash 模式，然后按你想选择的单词字母（比如：`l`）然后再按一下 `w` 选择单词，最后按一下 `p` 进行粘贴
                mode = "o",
                function()
                    require("flash").remote()
                end,
                desc = "Remote Flash",
            },
            {
                "R", -- 例子：复制某个块时的快捷方式：在 normal 模式下，先按一下 `y` 复制，然后按一下大写的 `R` 进入 flash 模式，然后按一下你想选择的块的开头，然后根据提示再按一下块的结尾字母，然后再移动光标到想要粘贴的位置，最后按一下 `p` 进行粘贴
                mode = { "o", "x" },
                function()
                    require("flash").treesitter_search()
                end,
                desc = "Flash Treesitter Search",
            },
            {
                "<c-s>",
                mode = { "c" },
                function()
                    require("flash").toggle()
                end,
                desc = "Toggle Flash Search",
            },
        },
        config = true
    },
    {
        "kamykn/spelunker.vim", -- 支持驼峰的拼写检查
        event = "VeryLazy",
        config = function()
            vim.g.spelunker_check_type = 2
        end
    },
    {
        "ellisonleao/glow.nvim", -- 简单的 markdown 显示插件（在 normal 模式下输入 `:Glow` 即可预览）
        event = "VeryLazy",
        config = true,
    },
    {
        "nvim-neo-tree/neo-tree.nvim", -- 文件树
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        keys = {
            { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Open the neo-tree", mode = { "n", "v" } }
        },
        config = true,
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = true,
    },
    {
        'echasnovski/mini.ai',
        event = "VeryLazy",
        config = true,
    },
    {
        "echasnovski/mini.comment", -- 注释各种语言。注释当前行，按 `gcc` 三个字母即可。注释多行时，在 visual 模式下选中多行，然后按 `gc` 两个字母，即可注释多行。
        event = "VeryLazy",
        config = true,
    },
    {
        -- 先按 `Ctrl+w` 然后按小写字母 `o` 可关闭除了当前窗口外的所有其他窗口
        "s1n7ax/nvim-window-picker",
        opts = {
            filter_rules = {
                include_current_win = true,
                bo = {
                    filetype = { "fidget", "neo-tree" }
                }
            }
        },
        keys = {
            {
                "<c-w>p", -- 多窗口时，先按 `Ctrl+w` 然后按小写字母 `p`，然后根据窗口上提示的字母，按下对应的字母，即可切换窗口
                function()
                    local window_number = require('window-picker').pick_window()
                    if window_number then vim.api.nvim_set_current_win(window_number) end
                end,
            }
        }
    },
}