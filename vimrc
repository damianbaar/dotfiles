set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
" Plugin 'morhetz/gruvbox'
" Plugin 'zeis/vim-kolor'
" Plugin 'w0ng/vim-hybrid'
Plugin 'tomasr/molokai'
" Plugin 'goatslacker/mango.vim'
" Plugin 'tpope/vim-fugitive'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'edkolev/promptline.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'sjl/gundo.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'maxbrunsfeld/vim-yankstack'

"WEB
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax.git'
Plugin 'skammer/vim-css-color.git'
Plugin 'groenewege/vim-less'
Plugin 'othree/html5.vim'

"Dev helper - linters
Plugin 'scrooloose/syntastic'
Plugin 'mtth/scratch.vim'

Plugin 'tomtom/tcomment_vim'
Plugin 'godlygeek/tabular'
Plugin 'moll/vim-node'
Plugin 'tpope/vim-surround'
Plugin 'mkitt/tabline.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'elzr/vim-json'
" Plugin 'tristen/vim-sparkup'
" Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'gregsexton/gitv'
Plugin 'mhinz/vim-startify'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/matchit.zip'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-repeat'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'lilydjwg/colorizer'
Plugin 'dkprice/vim-easygrep'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'xolox/vim-misc'
" Plugin 'vim-scripts/repmo.vim'
" Plugin 'dockyard/vim-easydir'
" Plugin 'mhinz/vim-toplevel'
Plugin 'xolox/vim-session'
" Plugin 'reinh/vim-makegreen'
Plugin 'scrooloose/nerdtree'
Plugin 'tyru/restart.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-markdown'
" Plugin 'danro/rename.vim'
" Plugin 'mileszs/ack.vim'
" Plugin 'elmcast/elm-vim'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ryanoasis/vim-devicons'
" Plugin 'benekastah/neomake'
Plugin 'mxw/vim-jsx'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mhinz/vim-signify'
" Plugin 'xolox/vim-easytags'
" Plugin 'airblade/vim-gitgutter'
Plugin 'marijnh/tern_for_vim'
" Plugin 'tpope/vim-fireplace'
" Plugin 'vim-scripts/VimClojure'
" Plugin 'airblade/vim-rooter'
" Plugin 'yssl/AutoCWD.vim'
"
call vundle#end()
filetype plugin indent on

let g:indentLine_noConcealCursor=""
let g:vim_json_syntax_conceal = 0
let g:jsx_ext_required = 0

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let loaded_netrw=0
let loaded_netrwPlugin=0


let g:repmo_key = ";"
let g:repmo_revkey = "<bar>"

set bg=dark 
colorscheme molokai
" let g:molokai_original = 1

if has ('x') && has ('gui')
  set clipboard=unnamedplus
elseif has ('gui')
  set clipboard=unnamed
endif

" Nerd\ File\ Types:h11
" set guifont=Nerd\ File\ Types:h11
" Set font on start
" let g:Guifont="Monaco for Powerline Plus:h15"

if has("gui_running")
  if has("gui_macvim")
    set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types:h12
    set antialias
    set macmeta
  " elseif has("gui_win32")
  "   set guifont=Consolas:h10:cANSI
  " else
  "   set guifont=Terminus\ 12
  endif
endif

"KEYS
imap jj <Esc>
let mapleader=","

nnoremap j gj
nnoremap k gk
nnoremap <leader><leader> <C-^>

"
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

map <leader>c "+y
map <leader>v "+p

nnoremap <a-i> 40<c-w><
nnoremap <a-o> 40<c-w>>

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

nmap <Leader>rs :source $MYVIMRC <CR>
nmap <Leader>re :SaveSession! <CR> :RestartVim<CR>
nmap <silent> <leader>u :GundoToggle<CR>

nnoremap <Space>a :ClearCtrlPCache<cr>\|:CtrlPCurWD<cr>
nnoremap <silent> <leader>ff  : CtrlPCurFile<CR>
nnoremap <tab> :CtrlPBuffer<CR>
nnoremap <silent> <leader>ll  : CtrlPLine<CR>
nnoremap <silent> <leader>qq  : CtrlPQuickfix<CR>
nnoremap <silent> <leader>mm : CtrlPMRUFiles<CR>
nnoremap <silent> <leader>cc : CtrlPChange<CR>
nnoremap <silent> <leader>tt : CtrlPTag<CR>

nnoremap cse :call <SID>ChangeElement()<cr>
map <leader>bd :bdelete<cr>

nnoremap <Leader>gg :Git<Space>
" nnoremap <Leader>gw :Gwrite<CR>
" nnoremap <Leader>gr :Gread<CR>
" nnoremap <Leader>gs :Gstatus<CR>
" nnoremap <Leader>gc :Gcommit<CR>
" nnoremap <Leader>gd :Gdiff<CR>
" nnoremap <Leader>gl :Glog<CR>
" nnoremap <Leader>gb :Gblame<CR>
" xnoremap <Leader>gb :Gblame<CR>
" nnoremap <Leader>gm :Gmove<Space>
" nnoremap <Leader>g/ :Ggrep<Space>

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

nmap <leader>gt :GitGutterToggle<CR>
nmap <leader>gh :GitGutterLineHighlightsToggle<CR>

nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

nmap - $


map <c-/> <Plug>TComment-<c-_><c-_>

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

map    <silent>   <F5>   :call        gruvbox#bg_toggle()<CR>
imap   <silent>   <F5>   <ESC>:call   gruvbox#bg_toggle()<CR>a
vmap   <silent>   <F5>   <ESC>:call   gruvbox#bg_toggle()<CR>gv

nmap s <Plug>(easymotion-s)
vmap s <Plug>(easymotion-s)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

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

map <silent><c-c> :NERDTreeFind<CR>
" map <silent><c-f> :Explorer<CR>
" map <silent> <c-f> :NERDTreeToggle<CR>
" map <silent> <c-f> :NERDTree %<CR>
map <silent> <c-f> :call ToggleEssayMode()<CR>

let s:enabled = 0

function! ToggleEssayMode()
  if s:enabled
    :NERDTreeToggle
    let s:enabled = 0
  else
    " :NERDTree %
    :NERDTreeFind
    let s:enabled = 1
  endif
endfunction
  "
let g:rooter_silent_chdir = 1

let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = -28
let g:netrw_banner = 0
let g:netrw_liststyle = 1
let g:netrw_sort_sequence = '[\/]$,*'
let NERDTreeQuitOnOpen=1

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<c-space>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
"  let g:UltiSnipsExpandTrigger="<c-e>"
"  let g:UltiSnipsListSnippets="<c-l>"
" " let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"" Ultisnips
" let g:UltiSnipsExpandTrigger="<c-space>"
" let g:UltiSnipsListSnippets="<c-s-tab>"

let g:EasyGrepFilesToExclude=".svn,.git,bundle.js,README.md,output.js"
let g:EasyGrepOpenWindowOnMatch=1
let g:EasyGrepIgnoreCase=1
let g:EasyGrepMode=2

let g:session_autosave = 'yes' 
let g:session_autoload = 'no' 
" :let g:session_autoload = 'no'

let delimitMate_expand_cr = 2
let delimitMate_expand_space = 0
let delimitMate_jump_expansion = 1

" Enable omni completion.
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" let g:neocomplete#force_omni_input_patterns.javascript = '[^. \t]\.\w*'
" autocmd FileType javascript setlocal omnifunc=tern#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" Enable heavy omni completion.
" if !exists('g:neocomplete#sources#omni#input_patterns')
"   let g:neocomplete#sources#omni#input_patterns = {}
" endif
" "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

let g:syntastic_always_populate_loc_list=0
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_enable_signs = 1
" let g:syntastic_javascript_jslint_conf = " --white --plusplus --nomen --newcap --evil"
let g:syntastic_error_symbol='▸'
let g:syntastic_warning_symbol='▸'
let g:syntastic_style_error_symbol='▸'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:neomake_javascript_eslint_maker = {
"     \ 'args': ['--verbose'],
"     \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
"     \ }
" let g:neomake_javascript_enabled_makers = ["eslint"]

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:smartusline_string_to_highlight = '(%n) %f '
set laststatus=2 " Seperate lines for state and mode
let g:airline_powerline_fonts=1 " Powerline simbols. Hermit font support it
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled=1

" let g:airline#extensions#tabline#enabled = 2
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#right_sep = ' '
" let g:airline#extensions#tabline#right_alt_sep = '|'
" let g:airline_left_sep = ' '
" let g:airline_left_alt_sep = '|'
" let g:airline_right_sep = ' '
" let g:airline_right_alt_sep = '|'
" let g:airline_theme= 'molokai'
" let g:airline_symbols.linenr= '⭡'
" " let g:airline_branch_prefix     = '⭠'
" " let g:airline_symbols.branch = '⭠'
" let g:airline_readonly_symbol   = '⭤'
" " let g:airline_linecolumn_prefix = '⭡'
" " let g:airline_symbols_paste = 'ρ'
" let g:airline_symbols_paste = 'Þ'
" let g:airline_symbols_whitespace = 'Ξ'

" let g:airline#extensions#tabline#left_sep = '⮀'
" let g:airline#extensions#tabline#left_alt_sep = '|'

" let g:airline_symbols.linenr = '¶'
" let g:airline_left_sep   = '⮀'
" let g:airline_left_sep   = '⮀'
" let g:airline_right_sep    = '⮂'
" let g:airline_right_sep    = '⮂'
" let g:airline_left_sep          = ' '
" let g:airline_left_alt_sep      = ' '
" let g:airline_right_sep         = ' '
" let g:airline_right_alt_sep     = ' '
"
" let g:airline_enable_branch    = 1
" let g:airline_enable_syntastic = 1
" let g:airline_powerline_fonts  = 0
"
" let g:airline_detect_modified=1
" let g:airline_detect_paste=1
" let g:airline_inactive_collapse=1
" let g:airline#extensions#syntastic#enabled = 1
" let g:airline#extensions#bufferline#enabled = 1
" let g:airline#extensions#hunks#enabled = 1
" let g:airline#extensions#whitespace#enabled = 1

let javascript_enable_domhtmlcss = 1
let b:javascript_fold = 1

let g:fuf_modesDisable = []

let g:startify_restore_position = 1
let g:startify_list_order = ['sessions', 'files', 'dir', 'bookmarks']
"let g:startify_session_detection = 1
let g:startify_session_autoload = 1
"let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_dir = '~/.vim/sessions'

let g:yankstack_map_keys = 0

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_use_smartsign_us = 1 
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_upper = 1

let g:ycm_path_to_python_interpreter = '/usr/bin/python'

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard'] " Use git but also show untracked files
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_open_new_file = 'r'

let g:ctrlp_status_func = {
      \   'main': 'CtrlPMainStatusLine',
      \   'prog': 'CtrlPProgStatusLine'
      \ }

" function! CtrlPMainStatusLine(...)
"   let item = '%#Character# '.a:5.' %*'
"   let marked = a:7 == ' <->' ? '' : a:7
"   let dir = ' %=%<%#LineNr# '.getcwd().' %*'
"   return item.marked.dir
" endfunction
"
" function! CtrlPProgStatusLine(...)
"   let len = '%#Function# '.a:1.' %*'
"   let dir = ' %=%<%#LineNr# '.getcwd().' %*'
"   return len.dir
" endfunction

" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/](bower_components|node_modules|.git)$',
"   \ 'file': '\v\.(exe|so|tags)$'
"   \ }
"
" let g:ctrlp_prompt_mappings = { 
"       \ 'PrtSelectMove("j")':   ['<c-j>', '['],
"       \ 'PrtSelectMove("k")':   ['<c-k>', ']'],
"       \ }
let g:tagbar_type_javascript = {
  \ 'ctagsbin' : '/usr/local/bin/jsctags'
\ }
let g:tagbar_type_haskell = {
  \ 'ctagsbin'  : 'hasktags',
  \ 'ctagsargs' : '-x -c -o-',
  \ 'kinds'     : [
    \  'm:modules:0:1',
    \  'd:data: 0:1',
    \  'd_gadt: data gadt:0:1',
    \  't:type names:0:1',
    \  'nt:new types:0:1',
    \  'c:classes:0:1',
    \  'cons:constructors:1:1',
    \  'c_gadt:constructor gadt:1:1',
    \  'c_a:constructor accessors:1:1',
    \  'ft:function types:1:1',
    \  'fi:function implementations:0:1',
    \  'o:others:0:1'
  \ ],
  \ 'sro'        : '.',
  \ 'kind2scope' : {
      \ 'm' : 'module',
      \ 'c' : 'class',
      \ 'd' : 'data',
      \ 't' : 'type'
  \ },
  \ 'scope2kind' : {
      \ 'module' : 'm',
      \ 'class'  : 'c',
      \ 'data'   : 'd',
      \ 'type'   : 't'
  \ }
\ }
" let g:easytags_dynamic_files = 1
" " let g:easytags_cmd = '/usr/local/bin/ctags'
" let g:easytags_languages = {
" \   'javascript': {
" \     'cmd': 'jsctags',
" \       'args': [],
" \       'fileoutput_opt': '-f',
" \       'stdout_opt': '-f-',
" \       'recurse_flag': '-R'
" \   }
" \}

" let g:gitgutter_realtime = 0
" let g:gitgutter_eager = 0
" let g:gitgutter_enabled = 0
"
let delimitMate_smart_quotes = 0
let delimitMate_autoclose = 0
let loaded_delimitMate = 0

nmap <leader>os :OpenSession<cr>

" let g:indentLine_fileType = ['*.js']

" todo.vim default highlight groups, feel free to override as wanted
hi link TodoTitle Title
hi link TodoTitleMark Normal
hi link TodoItem Special
hi link TodoItemAdditionalText Comment
hi link TodoItemCheckBox Identifier
hi link TodoItemDone Ignore
hi link TodoComment Comment " explicit comments must be enabled for this

" define like this to enable explicit comments
" comments then start with //
let g:TodoExplicitCommentsEnabled = 1
" let g:vim_json_syntax_conceal = 0
" let g:indentLine_noConcealCursor=""
"
"Vim flags
syntax on
set encoding=utf8
set fileencoding=utf8
set fillchars+=stl:\ ,stlnc:\
set t_Co=256
set nu
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
set backspace=indent,eol,start
set cursorline
set novb
set nohlsearch
set exrc            
set secure         
set autowrite
set autoread
set relativenumber
set linespace=3
set conceallevel=0
"
" autocmd BufNewFile,BufRead todo set ft=todo
"
" " autocmd User Node
" "   \ if &filetype == "javascript" |
" "   \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
" "   \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
" "   \ endif
" highlight StartifyFile guifg=#83a598 guibg=NONE gui=NONE
"
" " autocmd BufEnter * silent Cd!
autocmd BufEnter * silent IndentLinesReset 
"
" "go go go
" " au Filetype go nnoremap <leader>gr :GoRun %<CR>
" " au Filetype go nnoremap <leader>gd :GoInstall<CR>
" " au Filetype go nnoremap <leader>gu :GoImports<CR>
"
" " syntax enable
" " let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" " colorscheme OceanicNext
" " set background=dark
" " let g:airline_theme='oceanicnext'
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " True gui colors in terminal
"
" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>tg :call NumberToggle()<cr>
" " autocmd! BufWritePost * Neomake
" " set regexpengine=1
" " syntax enable
"
" " let g:javascript_conceal_function   = "ƒ"
" " let g:javascript_conceal_null       = "ø"
" " let g:javascript_conceal_this       = "@"
" " let g:javascript_conceal_return     = ">>"
" " let g:javascript_conceal_undefined  = "¿"
" " let g:javascript_conceal_NaN        = "ℕ"
" " let g:javascript_conceal_prototype  = "¶"
" " let g:javascript_conceal_static     = "•"
" " let g:javascript_conceal_super      = "Ω"
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
