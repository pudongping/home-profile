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

}