-- Bootstrap lazy.nvim
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

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
	{
	  "allaman/emoji.nvim",
	  version = "1.0.0", -- optionally pin to a tag
	  enabled = false,
	  ft = "markdown", -- adjust to your needs
	  dependencies = {
		-- util for handling paths
		"nvim-lua/plenary.nvim",
		-- optional for nvim-cmp integration
		"hrsh7th/nvim-cmp",
		-- optional for telescope integration
		"nvim-telescope/telescope.nvim",
		-- optional for fzf-lua integration via vim.ui.select
		"ibhagwan/fzf-lua",
	  },
	  opts = {
		-- default is false, also needed for blink.cmp integration!
		enable_cmp_integration = true,
		-- optional if your plugin installation directory
		-- is not vim.fn.stdpath("data") .. "/lazy/
		plugin_path = vim.fn.expand("$HOME/plugins/"),
	  },
	  config = function(_, opts)
		require("emoji").setup(opts)
		-- optional for telescope integration
		local ts = require('telescope').load_extension 'emoji'
		vim.keymap.set('n', '<leader>se', ts.emoji, { desc = '[S]earch [E]moji' })
	  end,
	},
	{ 'sainnhe/everforest' },
	{ 'vim-airline/vim-airline' },
	{ 'vim-airline/vim-airline-themes' },
	{ 'nvim-lua/plenary.nvim' },
	{ 'vimwiki/vimwiki' },
-- 	{ 'MeanderingProgrammer/render-markdown.nvim' },
	{ 'tpope/vim-fugitive' },
	-- { 'nvim-treesitter/nvim-treesitter' },
	{ 'img-paste-devs/img-paste.vim' },
	-- LSP Abilities
	-- { 'neovim/nvim-lspconfig' },
	-- { 'hrsh7th/cmp-nvim-lsp' },
	-- { 'hrsh7th/cmp-buffer' },
	-- { 'hrsh7th/cmp-path' },
	-- { 'hrsh7th/cmp-cmdline' },
	-- { 'hrsh7th/nvim-cmp' },
	-- Tree File Browser
	{ 'preservim/nerdtree' },
	-- FZF
	{ 'junegunn/fzf' },
	{ 'junegunn/fzf.vim' },
	{
    "ziontee113/icon-picker.nvim",
	enabled = false;
    config = function()
        require("icon-picker").setup({ disable_legacy_commands = true })

        local opts = { noremap = true, silent = true }

--        vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
        --vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
        --vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
    end
}
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habermax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
