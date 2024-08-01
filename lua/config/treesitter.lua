require'nvim-treesitter.configs'.setup {
	ensure_installed = {"cpp", "java", "python", "lua", "c", "c_sharp"},

	sync_install = false,
	auto_install = true,
	highlight = {
		enavle = true,
	},
}
