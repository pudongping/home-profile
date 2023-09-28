# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## 常用快捷键

[官方文档快捷键](https://www.lazyvim.org/keymaps)

以下罗列，我自己常用的快捷键：

| 快捷键        | 含义             | 模式 |
|------------|----------------| --- |
| gm         | 查看 markdown 文件 | N |
| H          | 向左边切换 buffer   | N |
| L          | 向右边切换 buffer   | N |
| <Ctrl+h>   | 向左边切换窗口        | N |
| <Ctrl+j>   | 向下边切换窗口        | N |
| <Ctrl+k>   | 向上边切换窗口        | N |
| <Ctrl+l>   | 向右边切换窗口        | N |
| <Ctrl+w> p | 快速在多个窗口中进行切换   | N |
| <leader>ql | 恢复关闭之前的窗口布局    | N |
| <leader>fn | 新建文件           | N |


---

程序跳转时流程：

`gd` 跳转到函数申明处，然后想要跳回去时 `<Ctrl+o>` 再次跳回到函数申明时 `<Ctrl+i>`