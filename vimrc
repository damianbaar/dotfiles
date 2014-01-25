colorscheme molokai
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
set t_Co=256
let g:molokai_original = 1
let g:rehash256 = 1
syntax on
set background=dark
set nu
set antialias
imap jj <Esc>
let mapleader=","
let g:mapleader =","
let g:airline_theme="molokai"
set splitbelow
set splitright
set nowrap
set backupdir=~/tmp
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
:let g:session_autosave = 'yes' 
:let g:session_autoload = 'no' 
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬,trail:·
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

let g:syntastic_always_populate_loc_list=1
let g:syntastic_javascript_checkers = ['jslint',"jshint"]

"" goyo
nnoremap <leader>df :Goyo<cr>

" custom 
" add some space after line
nnoremap wq :bd<CR>


let g:indent_guides_auto_colors = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'unite']
" Toggle comments
nmap <leader>c :TComment<CR>
"Toggle comments as a block
nmap <leader>= :TCommentBlock<CR>
vmap <leader>c :TComment<CR>
vmap <leader>= :TCommentBlock<CR>

let g:notes_directories = ['~/Dropbox/Shared\ Notes', '~/Documents/Notes']
let g:notes_suffix = '.txt'

Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-fugitive'
Bundle 'justinmk/vim-sneak'
Bundle 'bling/vim-airline'
" Bundle 'Shougo/unite.vim'
" Bundle 'Shougo/vimproc.vim'
" Bundle 'Sixeight/unite-grep'
Bundle "sjl/gundo.vim"
Bundle 'kshenoy/vim-signature'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'xolox/vim-session'
" Bundle "myusuf3/numbers.vim"
Bundle 'xolox/vim-misc'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'othree/html5.vim'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neosnippet'
" Bundle 'Shougo/neosnippet-snippets'
Bundle 'tomtom/tcomment_vim'
" Bundle 'marijnh/tern_for_vim'
Bundle 'godlygeek/tabular'
Bundle 'moll/vim-node'
Bundle 'tpope/vim-surround'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "mkitt/tabline.vim"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "h1mesuke/unite-outline"
Bundle "elzr/vim-json"
Bundle "tristen/vim-sparkup"
Bundle "junegunn/goyo.vim"
Bundle "xolox/vim-notes"
Bundle "mustache/vim-mustache-handlebars"
Bundle "svermeulen/vim-extended-ft"
Bundle "gregsexton/gitv"
Bundle "mhinz/vim-startify"
Bundle "Raimondi/delimitMate"
Bundle "vim-scripts/matchit.zip"
Bundle "kien/ctrlp.vim"

if xolox#misc#os#is_mac()
  set macmeta 
  for f in split(glob('~/.vim/plugins/osx/*.vim'), '\n')
    exe 'source' f
  endfor
endif

if xolox#misc#os#is_win()
endif

if xolox#misc#os#is_mac() && has('gui_running')
  set guifont=Inconsolata-dz\ For\ Powerline:h11
endif

" :let g:notes_suffix = '.txt'
:nmap <Leader>sr :source $MYVIMRC <CR>

let g:loaded_netrw        = 1 " Disable netrw
let g:loaded_netrwPlugin  = 1 " Disable netrw
let g:sneak#streak = 1
hi SneakPluginTarget guifg=black guibg=red ctermfg=black ctermbg=red
hi SneakPluginScope  guifg=black guibg=yellow ctermfg=black ctermbg=yellow
" autocmd VimEnter * IndentGuidesEnable 
" autocmd VimEnter * NumbersToggle 

set hidden
set confirm

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules/     " MacOSX/Linux
set incsearch ignorecase hlsearch
set whichwrap+=h,l

filetype plugin indent on 

let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|node_modules)$'
let g:ctrlp_show_hidden = 1
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_working_path_mode = 'ra'

"AIRLINE AIRLINE AIRLINE AIRLINE  
"AIRLINE AIRLINE AIRLINE AIRLINE  

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

set autowriteall
" unicode symbols
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
set laststatus=2
let g:airline_powerline_fonts = 1

"SNIPPETS SNIPETS SNIPETS SNIPETS  
"SNIPPETS SNIPETS SNIPETS SNIPETS  

imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
