set nocompatible
filetype off

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
Bundle 'xolox/vim-misc'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'othree/html5.vim'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neosnippet'
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
Bundle "amix/vim-zenroom2"
Bundle "vimwiki/vimwiki"
Bundle "xolox/vim-notes"
Bundle "mustache/vim-mustache-handlebars"
Bundle "gregsexton/gitv"
Bundle "mhinz/vim-startify"
Bundle "Raimondi/delimitMate"
Bundle "vim-scripts/matchit.zip"
Bundle "tpope/vim-unimpaired"
Bundle "tpope/vim-repeat"
Bundle "L9"
Bundle "FuzzyFinder"
Bundle "nelstrom/vim-visual-star-search"
Bundle "Shougo/neocomplcache.vim"
Bundle "lilydjwg/colorizer"
Bundle "groenewege/vim-less"
Bundle "mattn/webapi-vim"
Bundle "mattn/gist-vim"
Bundle "mtth/scratch.vim"

if has ('x') && has ('gui')
    set clipboard=unnamedplus
elseif has ('gui')
    set clipboard=unnamed
endif

if has("gui_running")
  if has("gui_macvim")
    set guifont=Inconsolata-dz\ For\ Powerline:h12
  elseif has("gui_win32")
    set guifont=Consolas:h10:cANSI
  else
    set guifont=Terminus\ 12
  endif
endif

if xolox#misc#os#is_mac()
  set macmeta
endif

if xolox#misc#os#is_win()
endif

filetype plugin indent on 

"KEYS
imap jj <Esc>
let mapleader=","

nnoremap j gj
nnoremap k gk

nnoremap / /\v
vnoremap / /\v

map <leader>c "+y
map <leader>v "+p
nnoremap <Space> za

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nmap <Leader>rr :source $MYVIMRC <CR>
nmap <silent> <leader>l :call ToggleList("Location List", 'l')<CR>
nmap <silent> <leader>e :call ToggleList("Quickfix List", 'c')<CR>
nmap <silent> <leader>u :GundoToggle<CR>
nmap <silent> <leader>i :IndentGuidesToggle<CR>

nnoremap <silent> <leader>b  :FufBuffer<CR>
nnoremap <silent> <leader>f  :FufFile<CR>
nnoremap <silent> <leader>fl  :FufLine<CR>
nnoremap <leader>df :Goyo<cr>

nmap s      <Plug>SneakForward
xmap s      <Plug>VSneakForward
nmap S       <Plug>SneakBackward
xmap S       <Plug>VSneakBackward

nmap <enter> <Plug>SneakNext
xmap <enter> <Plug>VSneakNext
nmap <bs>    <Plug>SneakPrevious
xmap <bs>    <Plug>VSneakPrevious

nnoremap cse :call <SID>ChangeElement()<cr>
nnoremap wq :bd<CR>
imap <C-c> <CR><Esc>O

nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

autocmd FileType javascript nnoremap <buffer> <leader>ty :TernType<CR>
autocmd FileType javascript nnoremap <buffer> <leader>tde :TernDef<CR>
autocmd FileType javascript nnoremap <buffer> <leader>td :TernDoc<CR>
autocmd FileType javascript nnoremap <buffer> <leader>tr :TernRefs<CR>
autocmd FileType javascript nnoremap <buffer> <leader>tR :TernRename<CR>
autocmd FileType javascript nnoremap <buffer> <leader>tt :TernDefPreview<CR>
autocmd FileType javascript nnoremap <buffer> <leader>tds :TernDefSplit<CR>
autocmd FileType javascript nnoremap <buffer> <leader>tdt :TernDefTab<CR>
autocmd FileType javascript nnoremap <buffer> <leader>tdb :TernDocBrowse<CR>

function! GetBufferList()
  redir =>buflist
  silent! ls
  redir END
  return buflist
endfunction

function! ToggleList(bufname, pfx)
  let buflist = GetBufferList()
  for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
    if bufwinnr(bufnum) != -1
      exec(a:pfx.'close')
      return
    endif
  endfor
  if a:pfx == 'l' && len(getloclist(0)) == 0
      echohl ErrorMsg
      echo "Location List is Empty."
      return
  endif
  let winnr = winnr()
  exec(a:pfx.'open')
  if winnr() != winnr
    wincmd p
  endif
endfunction

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
au FocusLost * :wa

let g:sneak#streak = 1
let g:sneak#map_netrw = 1
let g:sneak#use_ic_scs = 1

augroup SneakPluginColors
autocmd!
    autocmd ColorScheme * hi SneakPluginTarget guifg=black guibg=#F92672
    autocmd ColorScheme * hi SneakPluginScope guifg=black guibg=#A6E22E 
    autocmd ColorScheme * hi SneakStreakTarget guifg=black guibg=#F92672
    autocmd ColorScheme * hi SneakStreakMask guifg=black guibg=#A6E22E
augroup END

let g:goyo_width = 100

function! g:goyo_before()
  if has('gui_running')
    set fullscreen
    set linespace=5
  endif
endfunction

function! g:goyo_after()
  if has('gui_running')
    set nofullscreen
    set linespace=0
  endif
endfunction

let g:goyo_callbacks = [function('g:goyo_before'), function('g:goyo_after')]

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

if has('conceal')
  set conceallevel=2 concealcursor=i
endif

let s:slash = '[/\\]'
let s:startname = '(^|'.s:slash.')'
let s:endname = '($|'.s:slash.')'
let s:extension = '\.bak|\.dll|\.exe|\.o|\.pyc|\.pyo|\.swp|\.swo'
let s:dirname = 'node_modules|build|deploy|dist|vms|\.bzr|\.git|\.hg|\.svn|.+\.egg-info'
let g:fuf_file_exclude = '\v'.'('.s:startname.'('.s:dirname.')'.s:endname.')|(('.s:extension.')$)'
let g:fuf_dir_exclude = '\v'.s:startname.'('.s:dirname.')'.s:endname

let tern#is_show_argument_hints_enabled = 1
let g:tern_show_arguments_hints="on_move"
let g:tern_map_keys=1

let g:session_autosave = 'yes' 
let g:session_autoload = 'no' 

let g:indent_guides_enable_on_vim_startup=0

au FileType html let b:delimitMate_autoclose = 0
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1
let delimitMate_jump_expansion = 1

let g:EasyGrepWindow=1

" change html element 
function! s:ChangeElement()
  execute "normal! vat\<esc>"
  call setpos('.', getpos("'<"))
  let restore = @"
  normal! yi>
  let attributes = substitute(@", '^[^ ]*', '', '')
  let @" = restore
  let dounmapb = 0
  if !maparg(">","c")
    let dounmapb = 1
    " Hide from AsNeeded
    exe "cn"."oremap > <CR>"
  endif
  let tag = input('<', '')
  if dounmapb
    silent! cunmap >
  endif
  let tag = substitute(tag, '>*$', '', '')
  exe "normal cst<" . tag . attributes . ">"
endfunction

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

let g:gitgutter_enabled = 0
" let g:gitgutter_sign_added = '✚'
" let g:gitgutter_sign_modified = '➜'
" let g:gitgutter_sign_removed = '✘'

let g:notes_directories = ['~/Dropbox/Shared\ Notes', '~/Documents/Notes']
let g:notes_suffix = '.txt'

let g:indent_guides_auto_colors = 1
let g:indent_guides_exclude_filetypes = ['help', 'netrw','startify']
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

let g:syntastic_always_populate_loc_list=1
let g:syntastic_javascript_checkers = ["jshint"]
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_enable_signs = 1
let g:syntastic_javascript_jslint_conf = " --white --plusplus --nomen --newcap --evil"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
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

colorscheme molokai
syntax on
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
set t_Co=256
set background=dark
set nu
set antialias
set splitbelow
set splitright
set nowrap
set backupdir=~/tmp
set list
set number
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
set listchars=tab:·\ ,eol:¶,trail:·,extends:»,precedes:« 
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
set visualbell
set noerrorbells
set nobackup
set noswapfile

highlight SpecialKey guifg=#4a4a59
highlight NonText guifg=#4a4a59

autocmd InsertLeave * set iminsert=0

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set foldmethod=marker
set foldmarker={,}
set foldnestmax=1

let g:scratch_top = 0
let g:gist_open_browser_after_post = 1
let g:gist_show_privates = 1
let g:gist_post_private = 1
