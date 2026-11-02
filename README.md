# nvim.config
N 快捷键速查表
注意：默认的 <leader> 键已设置为 空格键 (Space)。

🪟 全局与窗口控制 (全局配置)
快捷键	功能描述
<leader> w	保存当前文件
<leader> q	退出当前窗口
Ctrl + h	切换到左侧窗口
Ctrl + j	切换到下方窗口
Ctrl + k	切换到上方窗口
Ctrl + l	切换到右侧窗口
📁 文件树 (nvim-tree)
快捷键	功能描述
<leader> e	打开 / 关闭侧边栏文件树
文件树内操作	
a	创建新文件 / 文件夹
d	删除文件 / 文件夹
r	重命名文件 / 文件夹
o	打开文件或展开/折叠文件夹
q	关闭文件树侧边栏
🔭 模糊搜索 (Telescope)
快捷键	功能描述
<leader> ff	查找项目中的文件 (Find Files)
<leader> fg	全局实时搜索文本 (Live Grep)
<leader> fb	查找已打开的缓冲区 (Buffers)
<leader> fr	查找最近打开过的文件 (Recent)
搜索窗口内	
Ctrl + n / p	在结果列表中向下 / 向上移动
Enter	在当前窗口打开选中项
Ctrl + v	垂直分屏打开选中项
Ctrl + x	水平分屏打开选中项
🧠 代码智能 (LSP)
快捷键	功能描述
gd	跳转到变量/函数的定义处
gr	查找变量/函数的所有引用
K	悬停显示文档说明 (Hover)
<leader> rn	重命名变量/函数（自动更新所有引用）
<leader> ca	代码操作 (Code Action，如自动导入包、修复错误)
[d	跳转到上一个错误/警告
]d	跳转到下一个错误/警告
💅 代码格式化 (conform.nvim)
快捷键	功能描述
<leader> f	手动格式化当前文件（支持 C/C++、Python、Lua）
(自动)	每次保存文件时（按 :w 或 <leader>w），会自动触发格式化
⌨️ 代码补全 (nvim-cmp，在插入模式下使用)
快捷键	功能描述
Ctrl + Space	手动触发补全菜单
Ctrl + e	取消 / 关闭补全菜单
Enter	确认选中当前补全项
Tab	在补全菜单中向下选择
Shift + Tab	在补全菜单中向上选择
