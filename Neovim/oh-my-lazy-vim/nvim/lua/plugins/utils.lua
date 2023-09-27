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
}