return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      desc = "格式化当前缓冲区",
    },
  },
  opts = {
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback", -- 没有专用格式化器时回退到 LSP
    },
    formatters_by_ft = {
      c = { "clang_format" },
      cpp = { "clang_format" },
      python = { "isort", "black" },  -- 先整理 import，再格式化
      lua = { "stylua" },
    },
  },
}