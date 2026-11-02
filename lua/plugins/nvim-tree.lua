-- ~/.config/nvim/lua/plugins/nvim-tree.lua
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", 
    	{ silent = true, desc = "open/close the FileTree"})
    require("nvim-tree").setup()
  end,
}
