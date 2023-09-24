local option = vim.opt
local buffer = vim.b
local globals = vim.g

-- Globol Settings --
option.showmode = false
option.backspace = { "indent", "eol", "start" }
option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true
option.shiftround = true
option.autoindent = true
option.smartindent = true
option.number = true
option.relativenumber = true
option.wildmenu = true
-- 关闭搜索结果的高亮
option.hlsearch = false
option.ignorecase = true
option.smartcase = true
-- 自动补全设置
option.completeopt = { "menuone", "noselect" }
option.cursorline = true
option.termguicolors = true
option.signcolumn = "yes"
option.autoread = true
option.title = true
option.swapfile = false
option.backup = false
option.updatetime = 50
option.mouse = "a"
option.undofile = true
option.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')
-- 在每个项目根目录下都可以新建 .nvim.lua 文件，自定义 neovim 的配置
option.exrc = true
option.wrap = false
-- 打开纵向新窗口时，在右边显示
option.splitright = true

-- Buffer Settings --
buffer.fileenconding = "utf-8"

-- Global Settings --
-- 设置 leader 键为空格键
globals.mapleader = " "

-- Key mappings --
-- 设置禁止使用方向键
-- vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>")
-- vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>")
-- vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>")
-- vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>")

vim.keymap.set("n", "<A-Tab>", "<cmd>bNext<CR>")
-- 关闭 buffer
vim.keymap.set("n", "<leader>bc", "<cmd>bd<CR>")

-- 按大写 J K 在视图模式下可以移动整块
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- 复制内容到系统剪切板
vim.keymap.set({ "v", "n" }, "<leader>y", "\"+y")