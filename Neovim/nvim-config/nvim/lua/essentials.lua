local option = vim.opt
local buffer = vim.b
local globals = vim.g

-- 如果你不知道有些配置项是什么意思时，
-- 你可以通过 `:help 'xxxx'` 来进行查询，比如我不知道 `showmode` 是什么含义时
-- 我可以通过 `:help 'showmode'` 来进行查询含义

-- Globol Settings --
option.showmode = false
option.backspace = { "indent", "eol", "start" }
-- 缩进
option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true
option.shiftround = true
option.autoindent = true
option.smartindent = true

option.number = true
option.relativenumber = true
option.wildmenu = true
option.scrolloff = 5 -- 光标距离底部保持 5 行

option.clipboard = "unnamed" -- 在 neovim 中使用复制粘贴时，和系统的剪切板互通
-- 在 copy 后高亮
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})

-- 搜索
option.hlsearch = false -- 关闭搜索结果的高亮
option.ignorecase = true -- 搜索不区分大小写
option.smartcase = true -- 如果搜索大写的话，就只使用大写

-- 自动补全设置
option.completeopt = { "menuone", "noselect" }

option.cursorline = true -- 高亮当前行
option.termguicolors = true -- 使用终端的真颜色
option.signcolumn = "yes" -- 文件行数右侧会有个很短的空格
option.autoread = true
option.title = true
option.swapfile = false
option.backup = false
option.updatetime = 50

option.mouse = "a" -- 启用鼠标
option.undofile = true
option.undodir = vim.fn.expand("$HOME/.local/share/nvim/undo")

option.exrc = true -- 在每个项目根目录下都可以新建 .nvim.lua 文件，自定义 neovim 的配置
option.wrap = false -- 禁止自动换行

option.splitright = true -- 打开纵向新窗口时，在右边显示
option.splitbelow = true -- 打开横向新窗口时，在下边显示

-- Buffer Settings --
buffer.fileenconding = "utf-8"

-- Global Settings --
globals.mapleader = " " -- 设置 leader 键为空格键

-- Key mappings --
-- 设置禁止使用方向键
-- vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>")
-- vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>")
-- vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>")
-- vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>")

vim.keymap.set("n", "<A-Tab>", "<cmd>bNext<CR>")
vim.keymap.set("n", "<leader>bc", "<cmd>bd<CR>") -- 关闭当前 buffer

-- 按大写 J K 在视图模式下可以移动整块（单行或多行移动）
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

vim.keymap.set({ "v", "n" }, "<leader>y", '"+y') -- 复制内容到系统剪切板
