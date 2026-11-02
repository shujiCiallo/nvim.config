return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main", -- 关键：强制使用 master 分支
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		--安装语言解析器
		require("nvim-treesitter").install({
			"c", "cpp", "python", "lua",
			"bash", "json", "yaml", "markdown",
		})
		--启用高亮和缩进
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "c", "cpp", "python", "lua",
				"bash", "json", "yaml", "markdown" },
			callback = function()
				vim.treesitter.start()
				vim.bo.indentexpr = "v:lua:require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
