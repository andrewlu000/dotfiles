-- local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim" 
-- vim.cmd.source(vimrc) 

require("config.lazy")
-- require("telescope").load_extension("emoji")
vim.cmd("colorscheme everforest")

vim.cmd("autocmd BufWinLeave *.* mkview")
vim.cmd("autocmd BufWinEnter *.* silent! loadview")

vim.keymap.set('n', '<Leader>tt', '<cmd>tabnew<cr>')
vim.keymap.set('n', '<Leader>tm', '<cmd>tabnext<cr>')
vim.keymap.set('n', '<Leader>tn', '<cmd>tabprevious<cr>')

vim.keymap.set('n', '<Leader>nt', '<cmd>NERDTreeToggle<cr>')
vim.keymap.set('n', '<Leader>ff', '<cmd>History<cr>')

vim.keymap.set('n', '<Leader>p', '<cmd>call mdip#MarkdownClipboardImage()<cr>')
vim.keymap.set('n', '<Leader>l', '<cmd>Lazy<cr>')

vim.opt.foldcolumn = "0"
vim.opt.foldtext = 'v:lua.custom_fold_text()'
function _G.custom_fold_text()
	local line = vim.fn.getline(vim.v.foldstart)
    local line_count = vim.v.foldend - vim.v.foldstart + 1
	local to_return = "" .. line .. "⚡ " .. line_count .. " lines"
--[[  replace the ^I tab stops in vim to just four spaces ]]
	to_return = to_return:gsub(string.char(9), "    ")
--[[	to_return = to_return:gsub("-", "*") ]]
--[[	to_return = to_return:gsub("%^I") ]]
	return to_return
end

vim.opt.number = true
vim.opt.ts = 4
vim.opt.sw = 4
vim.o.background = "dark"
vim.g.everforest_background = "soft"
vim.g.everforest_better_performance = 1
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.cmd("retab")
--[[vim.cmd("set listchars=tab:%\ %\ ,eol:$") ]]
--[[ vim.opt.nolist = true ]]
--[[vim.cmd("highlight Dates ctermbg=green guibg=green")]]
--[[vim.cmd("match Dates /\\d\\d\\d\\d-\\d\\d-\\d\\d/")]]
--[[vim.cmd("highlight Times ctermbg=red guibg=red")]]
--[[vim.cmd("match Times /\\d\\d:\\d\\d:\\d\\d/")]]
vim.cmd([[
	Mark CURRENT
]])
