-- local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim" 
-- vim.cmd.source(vimrc) 

require("config.lazy")
-- require("telescope").load_extension("emoji")
vim.cmd("colorscheme everforest")

vim.keymap.set('n', '<Leader>tt', '<cmd>tabnew<cr>')
vim.keymap.set('n', '<Leader>tm', '<cmd>tabnext<cr>')
vim.keymap.set('n', '<Leader>tn', '<cmd>tabprevious<cr>')

vim.keymap.set('n', '<Leader>nt', '<cmd>NERDTreeToggle<cr>')
vim.keymap.set('n', '<Leader>ff', '<cmd>History<cr>')

vim.keymap.set('n', '<Leader>p', '<cmd>call mdip#MarkdownClipboardImage()<cr>')
vim.keymap.set('n', '<Leader>l', '<cmd>Lazy<cr>')

vim.opt.number = true
vim.opt.ts = 4
vim.opt.sw = 4
vim.o.background = "dark"
vim.g.everforest_background = "soft"
vim.g.everforest_better_performance = 1
