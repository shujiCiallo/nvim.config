return {
  -- 1. Mason：LSP 安装管理器
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  -- 2. mason-lspconfig：连接 Mason 和 nvim-lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "clangd",   -- C / C++
        "pyright",  -- Python
        "lua_ls",   -- Lua
      },
    },
  },
  -- 3. nvim-lspconfig：使用 Neovim 0.11+ 新 API 进行配置
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- 通用的 LSP 快捷键（BufEnter 时绑定）
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local buf = args.buf
          local map = function(mode, l, r, desc)
            vim.keymap.set(mode, l, r, { buffer = buf, desc = desc })
          end
          map("n", "gd", vim.lsp.buf.definition, "跳转定义")
          map("n", "gr", vim.lsp.buf.references, "查找引用")
          map("n", "K", vim.lsp.buf.hover, "悬停文档")
          map("n", "<leader>rn", vim.lsp.buf.rename, "重命名")
          map("n", "<leader>ca", vim.lsp.buf.code_action, "代码操作")
          map("n", "[d", vim.diagnostic.goto_prev, "上一个诊断")
          map("n", "]d", vim.diagnostic.goto_next, "下一个诊断")
        end,
      })

      -- 使用新 API 定义各语言服务器的配置
      vim.lsp.config("clangd", {
        capabilities = capabilities,
      })

      vim.lsp.config("pyright", {
        capabilities = capabilities,
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      })

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.stdpath("config") .. "/lua"] = true,
              },
            },
          },
        },
      })

      -- 启用这些服务器
      vim.lsp.enable({ "clangd", "pyright", "lua_ls" })
    end,
  },
}