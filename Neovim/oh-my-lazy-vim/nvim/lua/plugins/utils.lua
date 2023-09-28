return {

    {
        --"rhysd/accelerated-jk",
        "rainbowhxch/accelerated-jk.nvim",
        config = function()
            -- j k 按住的时间越长，往上或者往下就越快
            vim.api.nvim_set_keymap("n", "j", "<Plug>(accelerated_jk_gj)", {})
            vim.api.nvim_set_keymap("n", "k", "<Plug>(accelerated_jk_gk)", {})
        end,
    },

    -- auto-resize windows
    {
        "anuvyklack/windows.nvim",
        event = "WinNew",
        dependencies = {
            { "anuvyklack/middleclass" },
            { "anuvyklack/animation.nvim", enabled = false },
        },
        keys = { { "<leader>m", "<cmd>WindowsMaximize<cr>", desc = "Zoom" } }, -- 分屏时，可以直接将某个窗口以百叶窗的形式放到最大
        config = function()
            vim.o.winwidth = 5
            vim.o.equalalways = false
            require("windows").setup({
                animation = { enable = false, duration = 150 },
            })
        end,
    },

    -- 快速在多个 windows 中间跳转
    {
        "s1n7ax/nvim-window-picker",
        opts = {
            filter_rules = {
                include_current_win = true,
                bo = {
                    filetype = { "neo-tree" },
                    buftype = { "terminal" },
                },
            },
        },
        keys = {
            {
                "<c-w>p", -- 多窗口时，先按 `Ctrl+w` 然后按小写字母 `p`，然后根据窗口上提示的字母，按下对应的字母，即可切换窗口
                function()
                    local window_number = require("window-picker").pick_window()
                    if window_number then
                        vim.api.nvim_set_current_win(window_number)
                    end
                end,
                desc = "picker a window"
            },
        },
    },

}