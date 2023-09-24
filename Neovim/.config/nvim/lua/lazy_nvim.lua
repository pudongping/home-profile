local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
local opts = {
    install = {
        -- try to load one of these colorschemes when starting an installation during startup
        colorscheme = { "tokyonight-storm" },
    },
}

-- 在同级目录下存在 `plugins` 目录时，会自动合并为一个大的 table （会自动读取 plugins 目录下所有的 `.lua` 文件）
require("lazy").setup("plugins", opts)