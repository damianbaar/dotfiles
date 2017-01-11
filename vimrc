"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" NeoBundle 'goatslacker/mango.vim'
" NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'airblade/vim-gitgutter'
": NeoBundle 'edkolev/promptline.vim'
" NeoBundle 'morhetz/gruvbox'
" NeoBundle 'zeis/vim-kolor'
" NeoBundle 'w0ng/vim-hybrid'
" NeoBundle 'tristen/vim-sparkup'
" NeoBundle 'mustache/vim-mustache-handlebars'
" NeoBundle 'gregsexton/gitv'
" NeoBundle 'vim-scripts/repmo.vim'
" NeoBundle 'dockyard/vim-easydir'
" NeoBundle 'mhinz/vim-toplevel'
" NeoBundle 'reinh/vim-makegreen'
" NeoBundle 'danro/rename.vim'
" NeoBundle 'mileszs/ack.vim'
" NeoBundle 'benekastah/neomake'
" NeoBundle 'xolox/vim-easytags'
" NeoBundle 'airblade/vim-gitgutter'
" NeoBundle 'tpope/vim-fireplace'
" NeoBundle 'vim-scripts/VimClojure'
" NeoBundle 'airblade/vim-rooter'
" NeoBundle 'yssl/AutoCWD.vim'
NeoBundle 'vim-scripts/bash-support.vim'
"
NeoBundle 'gmarik/vundle'

" colorschemes
" NeoBundle 'tomasr/molokai'
NeoBundle 'kristijanhusak/vim-hybrid-material'

NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'maxbrunsfeld/vim-yankstack'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'moll/vim-node'
NeoBundle 'tpope/vim-surround'
NeoBundle 'mkitt/tabline.vim'
NeoBundle 'Yggdroot/indentLine'
" NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'elzr/vim-json'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'lilydjwg/colorizer'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tyru/restart.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'ervandew/supertab'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'ryanoasis/vim-devicons'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'neilagabriel/vim-geeknote'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'make -f make_mingw32.mak',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'unix' : 'make -f make_unix.mak',
\    },
\ }
"
" " FileTypes
NeoBundle 'vim-ruby/vim-ruby',                 {'autoload' : {'filetypes' : ['ruby', 'erb']}}
NeoBundle 'tpope/vim-haml',                    {'autoload' : {'filetypes' : ['haml']}}
NeoBundle 'derekwyatt/vim-scala',              {'autoload' : {'filetypes' : ['scala']}}
NeoBundle 'elixir-lang/vim-elixir',            {'autoload' : {'filetypes' : ['elixir']}}
NeoBundle 'gabrielelana/vim-markdown',         {'autoload' : {'filetypes' : ['markdown']}}
NeoBundle 'stephpy/vim-yaml',                  {'autoload' : {'filetypes' : ['yaml']}}
NeoBundle 'Matt-Deacalion/vim-systemd-syntax', {'autoload' : {'filetypes' : ['systemd']}}
NeoBundle 'zah/nimrod.vim',                    {'autoload' : {'filetypes' : ['nim']}}
NeoBundle 'wstrinz/shen.vim',                  {'autoload' : {'filetypes' : ['shen']}}
NeoBundle 'ekalinin/Dockerfile.vim',           {'autoload' : {'filetypes' : ['Dockerfile']}}
NeoBundle 'rust-lang/rust.vim',                {'autoload' : {'filetypes' : ['rust']}}
NeoBundle 'rodjek/vim-puppet',                 {'autoload' : {'filetypes' : ['puppet']}}

" Editing
NeoBundle 'nelstrom/vim-visual-star-search'
NeoBundle 'dkprice/vim-easygrep'
NeoBundle 'terryma/vim-multiple-cursors'

" Rainbow ()
NeoBundle 'kien/rainbow_parentheses.vim'

"Dev helper - linters
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'mtth/scratch.vim'

"WEB
NeoBundle 'lambdatoast/elm.vim'          , {'autoload' : {'filetypes' : ['elm']}}
NeoBundle 'jelera/vim-javascript-syntax' , {'autoload' : {'filetypes' : ['javascript']}}
NeoBundle 'pangloss/vim-javascript'      , {'autoload' : {'filetypes' : ['javascript']}}
NeoBundle 'marijnh/tern_for_vim'         , {'autoload' : {'filetypes' : ['javascript']}}
NeoBundle 'mxw/vim-jsx'                  , {'autoload' : {'filetypes' : ['javascript'    , 'jsx']}}
NeoBundle 'hail2u/vim-css3-syntax.git'   , {'autoload' : {'filetypes' : ['css']}}
NeoBundle 'skammer/vim-css-color.git'    , {'autoload' : {'filetypes' : ['css']}}
NeoBundle 'groenewege/vim-less'          , {'autoload' : {'filetypes' : ['less']}}
NeoBundle 'othree/html5.vim'             , {'autoload' : {'filetypes' : ['html']}}
NeoBundle 'raichoo/purescript-vim'       , {'autoload' : {'filetypes' : ['purescript'    , 'pure']}}
NeoBundle 'leafgarland/typescript-vim'               , {'autoload' : {'filetypes' : ['ts']}}

" Clojure
NeoBundle 'guns/vim-clojure-static'       , {'autoload' : {'filetypes' : ['clojure']}}
NeoBundle 'guns/vim-clojure-highlight'    , {'autoload' : {'filetypes' : ['clojure']}}
NeoBundle 'tpope/vim-fireplace'           , {'autoload' : {'filetypes' : ['clojure']}}
NeoBundle 'tpope/vim-dispatch'            , {'autoload' : {'filetypes' : ['clojure']}}
NeoBundle 'typedclojure/vim-typedclojure' , {'autoload' : {'filetypes' : ['clojure']}}
NeoBundle 'vim-scripts/paredit.vim'       , {'autoload' : {'filetypes' : ['clojure']}}

" Haskell
" NeoBundle 'wlangstroth/vim-haskell'   , {'autoload' : {'filetypes' : ['haskell' , 'hs']}}
" NeoBundle 'bitc/vim-hdevtools'      , {'autoload' : {'filetypes' : ['haskell' , 'hs']}}
" NeoBundle 'eagletmt/ghcmod-vim'     , {'autoload' : {'filetypes' : ['haskell' , 'hs']}}
NeoBundle 'eagletmt/neco-ghc'         , {'autoload' : {'filetypes' : ['haskell' , 'hs']}}
" NeoBundle 'kana/vim-filetype-haskell' , {'autoload' : {'filetypes' : ['haskell' , 'hs']}}
NeoBundle 'alx741/vim-hindent'        , {'autoload' : {'filetypes' : ['haskell' , 'hs']}}
NeoBundle 'neovimhaskell/haskell-vim' , {'autoload' : {'filetypes' : ['haskell' , 'hs']}}
" NeoBundle 'nbouscal/vim-stylish-haskell' , {'autoload' : {'filetypes' : ['haskell'    , 'hs']}}
" NeoBundle 'itchyny/vim-haskell-indent'  , {'autoload' : {'filetypes' : ['haskell'    , 'hs']}}
" NeoBundle 'eagletmt/neco-ghc'          , {'autoload' : {'filetypes' : ['haskell']}}
"
NeoBundle 'jpalardy/vim-slime'
" NeoBundle 'christoomey/vim-tmux-navigator'
" NeoBundle 'jgdavey/vim-turbux'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

let g:vim_json_syntax_conceal = 0
let g:jsx_ext_required = 0

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let loaded_netrw=0
let loaded_netrwPlugin=0

let g:repmo_key = ";"
let g:repmo_revkey = "<bar>"

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
" nmap <Leader>re :SaveSession! <CR> :RestartVim<CR>
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
  \   'haskell': ['.']
  \ }

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
let g:UltiSnipsExpandTrigger="<c-enter>"
let g:UltiSnipsJumpForwardTrigger="<c-]>"
let g:UltiSnipsJumpBackwardTrigger="<c-[>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

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
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType hs,haskell setlocal omnifunc=necoghc#omnifunc
" let g:neocomplete#force_omni_input_patterns.javascript = '[^. \t]\.\w*'
" autocmd FileType javascript setlocal omnifunc=tern#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd BufNewFile,BufReadPost *.md set filetype=markdown


let g:syntastic_always_populate_loc_list=0
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_enable_signs = 1
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
syntax enable
" set encoding=utf8
set fileencoding=utf8
set fillchars+=stl:\ ,stlnc:\
" set t_Co=256
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

" Toggle between normal and relative numbering.
nnoremap <leader>tn :call NumberToggle()<cr>
" " autocmd! BufWritePost * Neomake
" " set regexpengine=1
" " syntax enable
"
" hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
" hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
" hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
" let g:molokai_original = 1
let g:indentLine_enabled = 1
" let g:indentLine_noConcealCursor=""
" let g:indentLine_char = '|'
let g:enable_bold_font = 1
let g:indentLine_color_term = 239
" colorscheme molokai
colorscheme hybrid_material
let g:airline_theme = "hybrid"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
