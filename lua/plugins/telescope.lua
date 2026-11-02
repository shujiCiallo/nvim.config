return {
  "nvim-telescope/telescope.nvim",
  version = "*",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "查找文件" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "全局搜索文本" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "查找缓冲区" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "最近文件" },
  },
  config = function()
    require("telescope").setup({})
  end,
}