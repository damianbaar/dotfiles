set nocompatible              " be iMproved

filetype off                  " required!  

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
    
Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'justinmk/vim-sneak'
Bundle 'bling/vim-airline'
Bundle "sjl/gundo.vim"
Bundle "vim-scripts/EasyGrep"
Bundle 'kshenoy/vim-signature'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'xolox/vim-session'
Bundle "myusuf3/numbers.vim"
Bundle 'xolox/vim-misc'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'othree/html5.vim'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'tomtom/tcomment_vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'godlygeek/tabular'
Bundle 'moll/vim-node'
Bundle 'tpope/vim-surround'
Bundle "honza/vim-snippets"
Bundle "mkitt/tabline.vim"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "h1mesuke/unite-outline"
Bundle "elzr/vim-json"
Bundle "tristen/vim-sparkup"
Bundle "junegunn/goyo.vim"
Bundle "xolox/vim-notes"
Bundle "mustache/vim-mustache-handlebars"
Bundle "gregsexton/gitv"
Bundle "mhinz/vim-startify"
Bundle "Raimondi/delimitMate"
Bundle "vim-scripts/matchit.zip"
Bundle "kien/ctrlp.vim"
Bundle "tpope/vim-unimpaired"
Bundle "tpope/vim-repeat"

if xolox#misc#os#is_mac()
  set macmeta 
  set guifont=Inconsolata-dz\ For\ Powerline:h11
  for f in split(glob('~/.vim/plugins/osx/*.vim'), '\n')
    exe 'source' f
  endfor
endif

if xolox#misc#os#is_win()
endif

filetype plugin indent on 

"vim settings
imap jj <Esc>
colorscheme molokai
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
set t_Co=256
syntax on
set background=dark
set nu
set antialias
set splitbelow
set splitright
set nowrap
set backupdir=~/tmp
set list
set number
nmap <leader>l :set list!<CR>
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
set listchars=tab:▸\ ,eol:¬,trail:·
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set autowriteall
set hidden
set confirm
set laststatus=2
set cursorline
set completeopt-=preview

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules/     " MacOSX/Linux
set incsearch ignorecase hlsearch
set smartcase
set whichwrap+=h,l

autocmd VimEnter * IndentGuidesToggle

"KEYS KEYS  KEYS  KEYS  KEYS  KEYS 
"KEYS KEYS  KEYS  KEYS  KEYS  KEYS 

let mapleader=","

nmap <silent> <leader>u :GundoToggle<CR>

nmap <silent> <leader>i :IndentGuidesToggle<CR>
let g:indent_guides_enable_on_vim_startup=0

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction

nmap <silent> <leader>e :<C-u>call ToggleErrors()<CR>
nnoremap <leader>l :NumbersToggle<CR>

nnoremap <leader>df :Goyo<cr>
nnoremap wq :bd<CR>
imap <C-c> <CR><Esc>O

" Toggle comments
nmap <leader>c  : TComment<CR>
nmap <leader>=  : TCommentBlock<CR>
vmap <leader>c  : TComment<CR>
vmap <leader>=  : TCommentBlock<CR>

map <leader>b   : CtrlPBuffer<CR>
map <leader>f   : CtrlPCurFile<CR>

nmap <Leader>sr : source $MYVIMRC <CR>

nmap f       <Plug>SneakForward
xmap f       <Plug>VSneakForward
nmap F       <Plug>SneakBackward
xmap F       <Plug>VSneakBackward
nmap s       <Plug>SneakStreak

nmap <enter> <Plug>SneakNext
xmap <enter> <Plug>VSneakNext
nmap <bs>    <Plug>SneakPrevious
xmap <bs>    <Plug>VSneakPrevious

imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

let g:notes_directories = ['~/Dropbox/Shared\ Notes', '~/Documents/Notes']
let g:notes_suffix = '.txt'

let g:indent_guides_auto_colors = 1
let g:indent_guides_exclude_filetypes = ['help', 'netrw','startify']
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

let g:syntastic_always_populate_loc_list=1
let g:syntastic_javascript_checkers = ["jslint","jshint"]

let g:sneak#streak = 1
let g:sneak#map_netrw = 1
let g:sneak#use_ic_scs = 1

let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|node_modules)$'
let g:ctrlp_show_hidden = 1
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_working_path_mode = 'ra'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme="molokai"

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = ''
let g:airline_right_sep = '«'
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

let g:numbers_exclude = ['unite', 'Goyo', 'tagbar', 'startify', 'gundo', 'vimshell', 'w4m']

let tern#is_show_argument_hints_enabled = 1
let g:tern_show_arguments_hints="on_move"
let g:tern_map_keys=1

let g:syntastic_enable_signs = 1
"let g:syntastic_check_on_open = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_jslint_conf = " --white --plusplus --nomen --newcap --evil"

let g:molokai_original = 1
let g:rehash256 = 1

let g:session_autosave = 'yes' 
let g:session_autoload = 'no' 

" let delimitMate_autoclose = 0
au FileType html let b:delimitMate_autoclose = 0
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1
let delimitMate_jump_expansion = 1

