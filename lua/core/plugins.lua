local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

--Connection plugins and colorshemes
require("lazy").setup({
	{
    		"nvim-neo-tree/neo-tree.nvim",
    		branch = "v3.x",
    		dependencies = {
      			"nvim-lua/plenary.nvim",
      			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
    		}
	}, --NeoTree

	{
		"nvim-treesitter/nvim-treesitter"
	}, --Treesitter

	{
		"neovim/nvim-lspconfig"
	}, --LSP

	{
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp"
	}, --CMP

	{
		"williamboman/mason.nvim"
	}, --Mason

	{
		"jose-elias-alvarez/null-ls.nvim"
	}, --Null-ls

	{
		"windwp/nvim-autopairs",
    		event = "InsertEnter",
   	 	config = true
	}, --Autopairs

	{
		"akinsho/bufferline.nvim"	
	}, --Bufferline

	{
		"lewis6991/gitsigns.nvim"	
	}, --Gitsigns
	
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" }
	}, --Lualine

	{
		"akinsho/toggleterm.nvim"	
	}, --Toggleterm

--Colorshames	

	{
		"sainnhe/gruvbox-material"
	}, --Gruvbox

	{
		"nvim-telescope/telescope.nvim"
	},
})
