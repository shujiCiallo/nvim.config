return {
  "sphamba/smear-cursor.nvim",
  event = "VeryLazy",
  opts = {
    -- 以下为常用自定义项，可按喜好调整
    smear_between_buffers = true, -- 切换缓冲区时也有拖尾
    smear_between_neighbor_lines = true, -- 跨行移动时有拖尾
    scroll_buffer_space = true, -- 滚动时在缓冲区空间绘制，效果更自然
    smear_insert_mode = true, -- 插入模式下也显示拖尾
    -- cursor_color = "#d3cdc3", -- 手动指定拖尾颜色（如果终端覆盖了光标颜色）
  },
  keys = {
    { "<leader>us", "<cmd>SmearCursorToggle<cr>", desc = "开关光标拖尾" }, -- 可选：手动切换
  },
}