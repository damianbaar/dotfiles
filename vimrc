set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'morhetz/gruvbox'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'edkolev/promptline.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'bling/vim-airline'
Bundle "sjl/gundo.vim"
Bundle 'kshenoy/vim-signature'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'othree/html5.vim'
Bundle 'scrooloose/syntastic'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'Shougo/neosnippet'
Bundle "garbas/vim-snipmate"
Bundle "m1foley/snipmate-snippets"
Bundle 'tomtom/tcomment_vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'godlygeek/tabular'
Bundle 'moll/vim-node'
Bundle 'tpope/vim-surround'
Bundle "mkitt/tabline.vim"
Bundle "Yggdroot/indentLine"
Bundle "vim-scripts/text-object-left-and-right"
Bundle "elzr/vim-json"
Bundle "tristen/vim-sparkup"
Bundle "junegunn/goyo.vim"
Bundle "amix/vim-zenroom2"
Bundle "mustache/vim-mustache-handlebars"
Bundle "gregsexton/gitv"
Bundle "mhinz/vim-startify"
Bundle "Raimondi/delimitMate"
Bundle "vim-scripts/matchit.zip"
Bundle "tpope/vim-unimpaired"
Bundle "tpope/vim-repeat"
Bundle "kien/ctrlp.vim"
Bundle "nelstrom/vim-visual-star-search"
Bundle "Shougo/neocomplcache.vim"
Bundle "lilydjwg/colorizer"
Bundle "groenewege/vim-less"
Bundle "mattn/webapi-vim"
Bundle "mattn/gist-vim"
Bundle "mtth/scratch.vim"
Bundle "tpope/vim-abolish"
Bundle "yegappan/grep"
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-fireplace'
Bundle 'guns/vim-clojure-static'
Bundle 'vim-scripts/VimClojure'
Bundle 'tpope/vim-classpath'
Bundle 'sjl/clam.vim'
Bundle 'vim-scripts/bufkill.vim'
" Bundle 'endel/flashdevelop.vim'

filetype plugin indent on

if has ('x') && has ('gui')
  set clipboard=unnamedplus
elseif has ('gui')
  set clipboard=unnamed
endif

if has("gui_running")
  set guifont=Anonymous\ Pro\ Minus:h14
  if has("gui_macvim")
    " set guifont=Inconsolata:h14
    set macmeta
  elseif has("gui_win32")
    " set guifont=Consolas:h10:cANSI
  else
    set guifont=Terminus\ 12
  endif
endif

"KEYS
imap jj <Esc>
let mapleader=","

nnoremap j gj
nnoremap k gk

" map each number to its shift-key character
" inoremap 1 !
" inoremap 2 @
" inoremap 3 #
" inoremap 4 $
" inoremap 5 %
" inoremap 6 ^
" inoremap 7 &
" inoremap 8 *
" inoremap 9 (
" inoremap 0 )
" inoremap - _

" and then the opposite
" inoremap ! 1
" inoremap @ 2
" inoremap # 3
" inoremap $ 4
" inoremap % 5
" inoremap ^ 6
" inoremap & 7
" inoremap * 8
" inoremap ( 9
" inoremap ) 0
" inoremap _ -

map <leader>c "+y
map <leader>v "+p

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

map <C-right> <ESC>:bn<CR>
map <C-left> <ESC>:bp<CR>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nmap <Leader>rr :source $MYVIMRC <CR>
nmap <silent> <leader>u :GundoToggle<CR>
nmap <silent> <leader>i :IndentGuidesToggle<CR>

nnoremap <silent> <leader>ff  : CtrlPCurFile<CR>
nnoremap <tab> :CtrlPBuffer<CR>
nnoremap <silent> <leader>fl  : CtrlPLine<CR>
nnoremap <silent> <leader>fq  : CtrlPQuickfix<CR>
nnoremap <silent> <leader>fm : CtrlPMRUFiles<CR>
nnoremap <silent> <leader>fc : CtrlPChange<CR>
nnoremap <silent> <leader>. : CtrlPTag<CR>
  
nnoremap <leader>df :Goyo<cr>

nnoremap cse :call <SID>ChangeElement()<cr>
map <leader>bd :bdelete<cr>

nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

nnoremap <Leader>gg :Git<Space>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gb :Gblame<CR>
xnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>g/ :Ggrep<Space>

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

nmap <leader>gt :call GitGutterToggle()<CR>
nmap <leader>gh :call GitGutterLineHighlightsToggle()<CR>

nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

noremap <Leadder>ne :NodeEval

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
  exe "cn"."oremap > <CR>"
endif
let tag = input('<', '')
if dounmapb
  silent! cunmap >
endif
let tag = substitute(tag, '>*$', '', '')
exe "normal cst<" . tag . attributes . ">"
endfunction

autocmd FileType javascript nnoremap <buffer> <leader>tr :TernRefs<CR>
autocmd FileType javascript nnoremap <buffer> <leader>tR :TernRename<CR>
autocmd FileType javascript nnoremap <buffer> <leader>tp :TernDefPreview<CR>

map    <silent>   <F5>   :call        gruvbox#bg_toggle()<CR>
imap   <silent>   <F5>   <ESC>:call   gruvbox#bg_toggle()<CR>a
vmap   <silent>   <F5>   <ESC>:call   gruvbox#bg_toggle()<CR>gv

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
nmap s <Plug>(easymotion-s)
omap t <Plug>(easymotion-bd-tl)

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

map <silent> <Leader>nt :NERDTreeToggle<CR>
map <silent> <Leader>nr :NERDTree<CR>
map <silent> <Leader>nf :NERDTreeFind<CR>

"Plugins configuration
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

autocmd VimEnter * let g:goyo_callbacks = [function('g:goyo_before'), function('g:goyo_after')]

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

if has('conceal')
set conceallevel=2 concealcursor=i
endif

let tern#is_show_argument_hints_enabled = 1
let g:tern_show_arguments_hints="on_move"
let g:tern_map_keys=1

let g:session_autosave = 'yes' 
let g:session_autoload = 'no' 

let g:indent_guides_enable_on_vim_startup=0

let delimitMate_expand_cr = 2
let delimitMate_expand_space = 0
let delimitMate_jump_expansion = 1

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 1
let g:neocomplcache_force_overwrite_completefunc = 1
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'vimshell' : $HOME.'/.vimshell_hist',
  \ 'scheme' : $HOME.'/.gosh_completions'
      \ }
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

let g:notes_directories = ['~/Dropbox/Shared\ Notes', '~/Documents/Notes']
let g:notes_suffix = '.txt'

let g:indent_guides_auto_colors = 1
let g:indent_guides_exclude_filetypes = ['help', 'netrw','startify']
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

let g:syntastic_always_populate_loc_list=0
let g:syntastic_javascript_checkers = ["jshint"]
let g:syntastic_enable_signs = 1
let g:syntastic_javascript_jslint_conf = " --white --plusplus --nomen --newcap --evil"
let g:syntastic_error_symbol='▸'
let g:syntastic_warning_symbol='▸'
let g:syntastic_style_error_symbol='▸'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '|'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = '¶'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep   = '⮀'
let g:airline_left_sep   = '⮀'
let g:airline_right_sep    = '⮂'
let g:airline_right_sep    = '⮂'
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_branch_prefix     = '⭠'
let g:airline_readonly_symbol   = '⭤'
let g:airline_linecolumn_prefix = '⭡'

let g:airline_enable_branch    = 1
let g:airline_enable_syntastic = 1
let g:airline_powerline_fonts  = 0

let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_inactive_collapse=1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#whitespace#enabled = 1

let g:scratch_top = 0

let g:gist_open_browser_after_post = 1
let g:gist_show_privates = 1
let g:gist_post_private = 1

let g:Grep_Default_Options = '-i --binary-files=without-match'
let g:Grep_Skip_Files = 'tags *.bak'
let g:Grep_Skip_Dirs = '.git node_modules'
let Grep_OpenQuickfixWindow = 0 

let javascript_enable_domhtmlcss = 1
let b:javascript_fold = 1
let g:javascript_conceal = 1

let g:fuf_modesDisable = []

let g:startify_session_detection = 1
let g:startify_change_to_vcs_root = 1
let g:startify_restore_position = 1
let g:startify_custom_indices = ['f', 'g', 'h']

let g:yankstack_map_keys = 0

let g:EasyGrepOpenWindowOnMatch=0

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_use_smartsign_us = 1 
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_upper = 1

let NERDTreeQuitOnOpen=1

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard'] " Use git but also show untracked files
let g:ctrlp_buftag_ctags_bin = '/usr/local/bin/ctags'
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 1

let g:ctrlp_status_func = {
      \   'main': 'CtrlPMainStatusLine',
      \   'prog': 'CtrlPProgStatusLine'
      \ }

function! CtrlPMainStatusLine(...)
  let item = '%#Character# '.a:5.' %*'
  let marked = a:7 == ' <->' ? '' : a:7
  let dir = ' %=%<%#LineNr# '.getcwd().' %*'
  return item.marked.dir
endfunction

function! CtrlPProgStatusLine(...)
  let len = '%#Function# '.a:1.' %*'
  let dir = ' %=%<%#LineNr# '.getcwd().' %*'
  return len.dir
endfunction

let g:ctrlp_custom_ignore = '\v[\/](node_modules|.git)$'
let g:ctrlp_prompt_mappings = { 
      \ 'PrtSelectMove("j")':   ['<c-j>', '['],
      \ 'PrtSelectMove("k")':   ['<c-k>', ']'],
      \ }

let g:ctrlp_buftag_types = {
      \ 'javascript' : {
      \ 'bin': 'javascript-ctags',
      \ 'args': '-f -',
      \ },
      \ 'clojure': '--language-force=clojure',
      \ 'css' : {
          \ 'bin': '/usr/local/bin/ctags',
          \ 'args': '-f -',
          \ },
        \ 'mxml' : {
          \ 'bin': '/usr/local/bin/ctags',
          \ 'args': '-f -',
          \ },
        \ 'actionscript' : {
          \ 'bin': '/usr/local/bin/ctags',
          \ 'args': '-f -',
          \ },
      \ }

let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_enabled = 0

let vimclojure#WantNailgun = 1
let vimclojure#HighlightBuiltins = 1
let vimclojure#ParenRainbow = 1

"Vim flags
syntax on
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set t_Co=256
set nu
set antialias
set splitbelow
set splitright
set nowrap
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
set incsearch ignorecase hlsearch
set smartcase
set whichwrap+=h,l
set visualbell
set noerrorbells
set nobackup
set noswapfile
set nowritebackup
set guioptions= 
set foldmethod=marker
set foldmarker={,}
set foldnestmax=1
set foldlevel=99
set foldlevelstart=99
set foldnestmax=3
set showcmd
set wildmenu
set wildmode=full
set cursorline cursorcolumn
set backspace=indent,eol,start
set novb
set nohlsearch
set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files
set autowrite                   
set autoread

autocmd BufEnter * set tags=tags

autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

autocmd BufNewFile,BufRead *.as set ft=actionscript
autocmd BufNewFile,BufRead *.as set smartindent
autocmd BufNewFile,BufRead *.as set autoindent
autocmd BufNewFile,BufRead *.mxml set ft=mxml
autocmd BufNewFile,BufRead *.cljs set filetype=clojure

au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript
"Colors
colorscheme gruvbox 

highlight StartifyFile guifg=#83a598 guibg=NONE gui=NONE
highlight SpecialKey guifg=#4a4a59
highlight NonText guifg=#4a4a59
