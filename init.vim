call plug#begin()
    Plug 'sainnhe/everforest'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
	Plug 'tpope/vim-fugitive'
"	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'davidhalter/jedi-vim'
call plug#end()

" Important!!
"if has('termguicolors')
"  set termguicolors
"endif

" For dark version.
set background=dark
set ts=4 
set sw=4
" For light version.
" set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'

" For better performance
let g:everforest_better_performance = 1

colorscheme everforest

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
