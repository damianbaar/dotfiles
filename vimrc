set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.config/nvim/plugged/ultisnips/
set rtp+=~/.config/nvim/plugged/deoplete.nvim/

call plug#begin('~/.vim/plugged')

Plug 'danro/rename.vim'
Plug 'mileszs/ack.vim'
Plug 'xolox/vim-easytags'
Plug 'flazz/vim-colorschemes'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sjl/gundo.vim'
Plug 'kshenoy/vim-signature'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'tomtom/tcomment_vim'
Plug 'godlygeek/tabular'
Plug 'moll/vim-node'
Plug 'tpope/vim-surround'
Plug 'mkitt/tabline.vim'
Plug 'Yggdroot/indentLine'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'elzr/vim-json'
Plug 'mhinz/vim-startify'
Plug 'Raimondi/delimitMate'
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lilydjwg/colorizer'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'scrooloose/nerdtree'
Plug 'tyru/restart.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-markdown'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
" Plug 'SirVer/ultisnips'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" " Editing
Plug 'nelstrom/vim-visual-star-search'
Plug 'dkprice/vim-easygrep'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" REPL / TMUX
Plug 'jpalardy/vim-slime'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jgdavey/vim-turbux'

"
" " FileTypes
" NeoBundle 'vim-ruby/vim-ruby',                 {'autoload' : {'filetypes' : ['ruby', 'erb']}}
" NeoBundle 'tpope/vim-haml',                    {'autoload' : {'filetypes' : ['haml']}}
" NeoBundle 'derekwyatt/vim-scala',              {'autoload' : {'filetypes' : ['scala']}}
" NeoBundle 'elixir-lang/vim-elixir',            {'autoload' : {'filetypes' : ['elixir']}}
" NeoBundle 'gabrielelana/vim-markdown',         {'autoload' : {'filetypes' : ['markdown']}}
" NeoBundle 'stephpy/vim-yaml',                  {'autoload' : {'filetypes' : ['yaml']}}
" NeoBundle 'Matt-Deacalion/vim-systemd-syntax', {'autoload' : {'filetypes' : ['systemd']}}
" NeoBundle 'zah/nimrod.vim',                    {'autoload' : {'filetypes' : ['nim']}}
" NeoBundle 'wstrinz/shen.vim',                  {'autoload' : {'filetypes' : ['shen']}}
" NeoBundle 'ekalinin/Dockerfile.vim',           {'autoload' : {'filetypes' : ['Dockerfile']}}
" NeoBundle 'rust-lang/rust.vim',                {'autoload' : {'filetypes' : ['rust']}}
" NeoBundle 'rodjek/vim-puppet',                 {'autoload' : {'filetypes' : ['puppet']}}
"
"
" " Rainbow ()
Plug 'kien/rainbow_parentheses.vim'
"
" "Dev helper - linters
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/syntastic'

"
" "WEB
" NeoBundle 'lambdatoast/elm.vim'          , {'autoload' : {'filetypes' : ['elm']}}
Plug 'jelera/vim-javascript-syntax' , {'for': ['javascript']}
Plug 'pangloss/vim-javascript'      , {'for': ['javascript']}
Plug 'ternjs/tern_for_vim' , { 'do': 'npm install', 'for': ['js','javascript'] }
Plug 'jason0x43/vim-js-indent', { 'for': ['js','javascript'] }
Plug 'Quramy/vim-js-pretty-template', { 'for': ['js','javascript', 'ts','typescript'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'mxw/vim-jsx',                  { 'for' : ['javascript'    , 'jsx']}
" Plug 'hail2u/vim-css3-syntax.git',   { 'for' : ['css']}
" Plug 'skammer/vim-css-color.git',  { 'for' : ['css']}
Plug 'groenewege/vim-less',          { 'for' : ['less']}
Plug 'othree/html5.vim',             { 'for' : ['html']}
" NeoBundle 'raichoo/purescript-vim'       , {'autoload' : {'filetypes' : ['purescript'    , 'pure']}}

" Plug 'leafgarland/typescript-vim' , {'for': ['typescript' , 'ts']}

Plug 'HerringtonDarkholme/yats.vim', { 'for': ['typescript' , 'ts'] }
Plug 'Quramy/tsuquyomi'           , {'for': ['typescript' , 'ts']}
" Plug 'Quramy/vim-dtsm', { 'for': ['ts','typescript'] }
Plug 'mhartington/vim-angular2-snippets', { 'for': ['ts','typescript'] }
Plug 'mhartington/nvim-typescript', { 'for': ['ts','typescript'] }
" Plug 'mhartington/vim-typings', { 'for': ['ts','typescript'] }
"
" " Clojure
" NeoBundle 'guns/vim-clojure-static'       , {'autoload' : {'filetypes' : ['clojure']}}
" NeoBundle 'guns/vim-clojure-highlight'    , {'autoload' : {'filetypes' : ['clojure']}}
" NeoBundle 'tpope/vim-fireplace'           , {'autoload' : {'filetypes' : ['clojure']}}
" NeoBundle 'tpope/vim-dispatch'            , {'autoload' : {'filetypes' : ['clojure']}}
" NeoBundle 'typedclojure/vim-typedclojure' , {'autoload' : {'filetypes' : ['clojure']}}
" NeoBundle 'vim-scripts/paredit.vim'       , {'autoload' : {'filetypes' : ['clojure']}}
"
" " Haskell
" " NeoBundle 'wlangstroth/vim-haskell'   , {'autoload' : {'filetypes' : ['haskell' , 'hs']}}
" NeoBundle 'neovimhaskell/haskell-vim' , {'autoload' : {'filetypes' : ['haskell' , 'hs']}}
" " NeoBundle 'bitc/vim-hdevtools'      , {'autoload' : {'filetypes' : ['haskell' , 'hs']}}
" " NeoBundle 'eagletmt/ghcmod-vim'     , {'autoload' : {'filetypes' : ['haskell' , 'hs']}}
" Plug 'alx741/vim-hindent'     , {'for': ['hs', 'haskell']}
" Plug 'nbouscal/vim-stylish-haskell' , {'for': ['hs', 'haskell']}
Plug 'neovimhaskell/haskell-vim' , {'for': ['hs', 'haskell']}
Plug 'itchyny/vim-haskell-indent'  , {'for': ['hs', 'haskell']}
Plug 'eagletmt/neco-ghc'          , {'for': ['hs', 'haskell']}


" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
"End NeoBundle Scripts-------------------------
call plug#end()

" Required:
filetype plugin indent on
syntax enable
syntax on

let g:deoplete#enable_at_startup = 1

set encoding=utf8
set fileencoding=utf8
set fillchars+=stl:\ ,stlnc:\
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
set completeopt=longest,menuone,preview
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
set wildmode=longest:full,full
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
set background=dark

let g:vim_json_syntax_conceal = 0
let g:jsx_ext_required = 0
let loaded_netrw=0
let loaded_netrwPlugin=0
let g:repmo_key = ";"
let g:repmo_revkey = "<bar>"

let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*ts.*\.ts$'] = 'ƛ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['typescript'] = 'ƛ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ts'] = 'ƛ'
let g:WebDevIconsOS = 'Darwin'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


if has ('x') && has ('gui')
  set clipboard=unnamedplus
elseif has ('gui')
  set clipboard=unnamed
endif

if has("gui_running")
  if has("gui_macvim")
    set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types:h12
    set antialias
    set macmeta
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

if exists('$TMUX') == 0
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif

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
nnoremap <leader>oo :TagbarToggle<cr>

" nnoremap <leader>te :below 10sp term://$SHELL<cr>i
nnoremap <leader>te :below 10sp term://tmux<cr>i
tnoremap <Leader>e <C-\><C-n><C-w><C-w>
tnoremap <C-h> <C-w>h
tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-l> <C-w>l
tnoremap <C-w><C-w> <C-\><C-n><C-w><C-w>

" nmap <-> #

" Buffer
map <leader>bd :bdelete<cr>

" nnoremap <Leader>gg :Git<Space>
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

nmap <leader>gt :GitGutterToggle<CR>
nmap <leader>gh :GitGutterLineHighlightsToggle<CR>

nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

map <c-/> <Plug>TComment-<c-_><c-_>

nmap <leader>s <Plug>(easymotion-s)
vmap <leader>s <Plug>(easymotion-s)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

nmap <Leader>tr :TsuRenameSymbol<CR>
nmap <Leader>ti :TsuImport<CR>
nmap <Leader>td :TsuDefinition<CR>

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

" map <silent><c-c> :NERDTreeFind<CR>
" map <silent><c-f> :Explorer<CR>
" map <silent> <c-f> :NERDTreeToggle<CR>
" map <silent> <c-f> :NERDTree %<CR>
map <silent> <c-f> :call FindNerdTree()<CR>

let s:enabled = 0

function! FindNerdTree()
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

let NERDTreeQuitOnOpen=1

let g:haskellmode_completion_ghc = 0
let g:necoghc_enable_detailed_browse = 1
let g:necoghc_debug = 1

let g:GeeknoteFormat="markdown"
noremap <leader-nn> :Geeknote<cr>

" let g:UltiSnipsExpandTrigger = "<c-tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"

" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>', '<space>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'
"
" " better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" function! g:UltiSnips_Complete()
"     call UltiSnips#ExpandSnippet()
"     if g:ulti_expand_res == 0
"         if pumvisible()
"             return "\<C-n>"
"         else
"             call UltiSnips#JumpForwards()
"             if g:ulti_jump_forwards_res == 0
"                return "\<TAB>"
"             endif
"         endif
"     endif
"     return ""
" endfunction

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-enter>"
" let g:UltiSnipsJumpForwardTrigger="<c-]>"
" let g:UltiSnipsJumpBackwardTrigger="<c-[>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
" au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

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

let g:haskellmode_completion_ghc = 0
let g:necoghc_enable_detailed_browse = 1

" Enable omni completion.
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType hs,haskell setlocal omnifunc=necoghc#omnifunc
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" let g:neocomplete#force_omni_input_patterns.javascript = '[^. \t]\.\w*'
" autocmd FileType javascript setlocal omnifunc=tern#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript JsPreTmpl html
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript JsPreTmpl xml
autocmd FileType typescript JsPreTmpl markdown
" autocmd FileType typescript syn clear foldBraces " For leafgarland/typescript-vim users only. Please see #1 for details.
autocmd FileType coffee JsPreTmpl xml

let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_single_quote_import= 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:syntastic_always_populate_loc_list=0
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_ennable_signs = 1
let g:syntastic_error_symbol='▸'
let g:syntastic_warning_symbol='▸'
let g:syntastic_style_error_symbol='▸'
let g:syntastic_html_tidy_ignore_errors = ['attribute name', 'is not recognized!', 'discarding unexpected', 'proprietary attribute']

let g:AutoPairsFlyMode = 0
" let g:AutoPairsShortcutBackInsert = '<M-b>'

autocmd FileType typescript nmap <buffer> <Leader>ts : <C-u>echo tsuquyomi#hint()<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:smartusline_string_to_highlight = '(%n) %f '
set laststatus=2 " Seperate lines for state and mode



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

" let g:ycm_path_to_python_interpreter = '/usr/bin/python'

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard'] " Use git but also show untracked files
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0
let g:ctrlp_switch_buffer = 'Et'

let g:airline_powerline_fonts = 1

let g:ctrlp_open_new_file = 'r'

" let g:ctrlp_status_func = {
"       \   'main': 'CtrlPMainStatusLine',
"       \   'prog': 'CtrlPProgStatusLine'
"       \ }

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Slime
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <Leader>tv <Plug>SetTmuxVars
let g:slime_target = "tmux"

" let g:gitgutter_realtime = 0
" let g:gitgutter_eager = 0
" let g:gitgutter_enabled = 0
"
let delimitMate_smart_quotes = 0
let delimitMate_autoclose = 0
let loaded_delimitMate = 0

nmap <leader>os :OpenSession<cr>

"
autocmd BufNewFile,BufRead todo set ft=todo
"
highlight StartifyFile guifg=#83a598 guibg=NONE gui=NONE
"
" " autocmd BufEnter * silent Cd!
" autocmd BufEnter * silent IndentLinesReset
"
" " syntax enable
" " let $NVIM_TUI_ENABLE_TRUE_COLOR=1
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

nnoremap <leader>tn :call NumberToggle()<cr>
"
let g:indentLine_enabled = 1
let g:enable_bold_font = 1
let g:indentLine_color_term = 239
colorscheme luna-term
"
" let g:deoplete#omni#functions = {}
" let g:deoplete#omni#functions.javascript = [
"   \ 'tern#Complete',
"   \ 'jspc#omni'
" \]
"
" let g:deoplete#omni#functions.typescript = [
"   \ 'tern#Complete',
"   \ 'jspc#omni'
" \]


" NEOSNIPPET
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
let g:neosnippet#expand_word_boundary = 1
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"use <tab> for completion
" function! TabWrap()
"     if pumvisible()
"         return "\<C-N>"
"     elseif strpart( getline('.'), 0, col('.') - 1 ) =~ '^\s*$'
"         return "\<tab>"
"     elseif &omnifunc !~ ''
"         return "\<C-X>\<C-O>"
"     else
"         return "\<C-N>"
"     endif
" endfunction

" power tab
" imap <silent><expr><tab> TabWrap()
"
" " Enter: complete&close popup if visible (so next Enter works); else: break undo
" inoremap <silent><expr> <Cr> pumvisible() ?
"             \ deoplete#mappings#close_popup() : "<C-g>u<Cr>"
"
" " Ctrl-Space: summon FULL (synced) autocompletion
inoremap <silent><expr> <C-Space> deoplete#mappings#manual_complete()
" imap <C-Space> <C-X><C-O>
"
" " Escape: exit autocompletion, go to Normal mode
" inoremap <silent><expr> <Esc> pumvisible() ? "<C-e><Esc>" : "<Esc>"

" SuperTab like snippets behavior.
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: "\<TAB>"
"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:SuperTabClosePreviewOnPopupClose = 1

let g:deoplete#enable_smart_case = 1
let g:echodoc_enable_at_startup	= 1

" P key-mappings.
" call deoplete#custom#set('buffer', 'mark', 'buffer')
" call deoplete#custom#set('ternjs', 'mark', '')
" call deoplete#custom#set('typescript', 'mark', 'T')
" call deoplete#custom#set('omni', 'mark', 'omni')
" call deoplete#custom#set('file', 'mark', 'file')

" let g:deoplete#sources = {}
" let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
" let g:tern#command = ['tern']
" let g:tern#arguments = ['--persistent']

function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete=2
  endfunction
  function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete=0
  endfunction

  function! Preview_func()
    if &pvw
      setlocal nonumber norelativenumber
     endif
  endfunction
  autocmd WinEnter * call Preview_func()

autocmd WinEnter * call Preview_func()

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


let g:loaded_python_provider = 1
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.6/bin/python3'
let g:python_host_prog = '/usr/bin/python'
