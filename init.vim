call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'zchee/deoplete-jedi'

Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdcommenter'

Plug 'sbdchd/neoformat'

Plug 'scrooloose/nerdtree'

Plug 'neomake/neomake'

Plug 'terryma/vim-multiple-cursors'

Plug 'machakann/vim-highlightedyank'

Plug 'tmhedberg/SimpylFold'

Plug 'morhetz/gruvbox'

call plug#end()


"-- AUTOCOMPLETE --
filetype plugin on
set omnifunc=syntaxcomplete#Complete

let g:deoplete#enable_at_startup = 1
"-- deoplete close window bug
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"-- deoplete navigate with tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"-- vim-airline theme
let g:airline_theme='luna' 

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = 'right' 

" --python syntax checker
let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)

" --yank highlighting
hi HighlightedyankRegion cterm=reverse gui=reverse

" --colorscheme
colorscheme gruvbox
set background=dark " use dark mode
