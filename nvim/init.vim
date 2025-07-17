call plug#begin()
    Plug 'sainnhe/everforest'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
	Plug 'tpope/vim-fugitive'
"	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'davidhalter/jedi-vim'
"	Plug 'MeanderingProgrammer/render-markdown.nvim'
	Plug 'vimwiki/vimwiki'
	Plug 'img-paste-devs/img-paste.vim'

"	LSP Abilities
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'

" 	Tree File Browser
	Plug 'preservim/nerdtree'
call plug#end()

set number
set background=dark
set ts=4 
set sw=4
" For light version.
" set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'
let g:everforest_better_performance = 1
colorscheme everforest

let mapleader=","

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
" let g:mdip_imgdir = 'img'
" let g:mdip_imgname = 'image'

nmap <leader>tt :tabnew<CR>
nmap <leader>tm :tabnext<CR>
nmap <leader>tn :tabprevious<CR>

" NERDTree
nnoremap <leader>nt :NERDTreeToggle<CR>

let g:vimwiki_markdown_link_ext = 1
