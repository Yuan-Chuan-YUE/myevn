set nu

syntax on

" Plugins will be downloaded under the specified directory.
 call plug#begin()

" " Declare the list of plugins.
" Plug 'tpope/vim-sensible'
" Plug 'junegunn/seoul256.vim'
"
Plug 'crusoexia/vim-monokai'
"Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'preservim/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/calendar.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'lervag/vimtex'
" " List ends here. Plugins become visible to Vim after this call.
call plug#end()

set shiftwidth=4

filetype plugin on

autocmd FileType c,cc,cpp setlocal sw=4 sts=2 ts=4
autocmd FileType javascript setlocal sw=4 sts=2 ts=4


nnoremap <C-t> :NERDTreeToggle<CR>
map <F12> :TagbarToggle<CR>

set expandtab
let g:tagbar_ctags_bin = '~/.local/bin/ctags'
let g:Lf_WindowPosition = 'popup'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'

colorscheme monokai
let g:NERDTreeWinSize=20

"indent line
let g:indentLine_setConceal = 0

"my habit
nnoremap <leader>ff : LeaderfFunction <CR>
nnoremap ge : GitGutterEnable <CR>
nnoremap gd : GitGutterDisable <CR>
nmap <silent> cgd <Plug>(coc-definition)
nnoremap tp : tabprevious <CR>
nnoremap tn : tabNext <CR>
nnoremap ts : tab split <CR>

set conceallevel=1 

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

let g:airline_left_sep=''

"markdown
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
