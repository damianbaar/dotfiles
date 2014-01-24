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
 
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬,trail:·
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

if has('gui_running')
  set guifont=Inconsolata-dz\ For\ Powerline:h11
endif

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

let g:syntastic_always_populate_loc_list=1
let g:syntastic_javascript_checkers = ['jslint',"jshint"]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:unite_source_history_yank_enable = 1

nnoremap    [unite]   <Nop>
nmap    <leader>f [unite]

nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir
      \ -buffer-name=files buffer file_mru bookmark file<CR>
nnoremap <silent> [unite]d  :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]o  :<C-u>Unite outline<CR>
nnoremap <silent> [unite]b
      \ :<C-u>Unite -buffer-name=files -default-action=lcd directory_mru<CR>
nnoremap  [unite]f  :<C-u>Unite source<CR>

nnoremap [unite]o :Unite outline -start-insert<cr>
nnoremap [unite]y :Unite history/yank<cr>
nnoremap [unite]g :Unite menu:git -start-insert<cr>

nnoremap <silent> [unite]s
      \ :<C-u>Unite -buffer-name=files -no-split
      \ jump_point file_point buffer_tab
      \ file_rec:! file file/new file_mru<CR>
" Start insert.
let g:unite_enable_start_insert = 1
"let g:unite_enable_short_source_names = 1

" To track long mru history.
"let g:unite_source_file_mru_long_limit = 3000
"let g:unite_source_directory_mru_long_limit = 3000

" Like ctrlp.vim settings.
let g:unite_winheight = 20
let g:unite_split_rule = 'botright'

" Prompt choices.
let g:unite_prompt = '❫ '
let g:unite_prompt = '» '

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
  nmap <buffer> <ESC>      <Plug>(unite_exit)
  imap <buffer> jj      <Plug>(unite_insert_leave)
  "imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)

  imap <buffer><expr> j unite#smart_map('j', '')
  imap <buffer> <TAB>   <Plug>(unite_select_next_line)
  imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
  imap <buffer> '     <Plug>(unite_quick_match_default_action)
  nmap <buffer> '     <Plug>(unite_quick_match_default_action)
  imap <buffer><expr> x
        \ unite#smart_map('x', "\<Plug>(unite_quick_match_choose_action)")
  nmap <buffer> x     <Plug>(unite_quick_match_choose_action)
        \ unite#smart_map('l', unite#do_action('default'))

  let unite = unite#get_current_unite()
  if unite.profile_name ==# 'search'
    nnoremap <silent><buffer><expr> r     unite#do_action('replace')
  else
    nnoremap <silent><buffer><expr> r     unite#do_action('rename')
  endif

  nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')
  nnoremap <buffer><expr> S      unite#mappings#set_current_filters(
        \ empty(unite#mappings#get_current_filters()) ?
        \ ['sorter_reverse'] : [])

  " Runs "split" action by <C-s>.
  imap <silent><buffer><expr> <C-s>     unite#do_action('split')

  call unite#filters#matcher_default#use(['matcher_fuzzy'])
  call unite#filters#sorter_default#use(['sorter_rank'])
  call unite#set_profile('files', 'smartcase', 1)
  call unite#custom#source('line,outline','matchers','matcher_fuzzy')

endfunction"}}}

let g:unite_source_file_mru_limit = 200
let g:unite_cursor_line_highlight = 'TabLineSel'
let g:unite_abbr_highlight = 'TabLine'

" let g:unite_source_rec_async_command= 'ag --ignore node_modules -i --color --nogroup --hidden -u'
"tern
nnoremap <leader>re :TernRename<cr>
nnoremap <leader>de :TernDef<cr>

" goyo
nnoremap <leader>df :Goyo<cr>

" custom 
nnoremap <C-w>q :bd<CR>

let g:indent_guides_auto_colors = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'unite']
" Toggle comments
nmap <leader>c :TComment<CR>
"Toggle comments as a block
nmap <leader>= :TCommentBlock<CR>
vmap <leader>c :TComment<CR>
vmap <leader>= :TCommentBlock<CR>

:let g:notes_directories = ['~/Documents/Notes', '~/Dropbox/Shared\ Notes']


Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'justinmk/vim-sneak'
Bundle 'bling/vim-airline'
Bundle 'Shougo/unite.vim'
Bundle 'kshenoy/vim-signature'
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
Bundle 'tomtom/tcomment_vim'
" Bundle 'marijnh/tern_for_vim'
Bundle 'godlygeek/tabular'
Bundle 'moll/vim-node'
Bundle 'tpope/vim-surround'
Bundle "MarcWeber/vim-addon-mw-utils"
" Bundle "garbas/vim-snipmate"
" Bundle "honza/vim-snippets"
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

if xolox#misc#os#is_mac()
  for f in split(glob('~/.vim/plugins/osx/*.vim'), '\n')
    exe 'source' f
  endfor
endif

if xolox#misc#os#is_win()
endif

" :let g:notes_suffix = '.txt'
:nmap <Leader>sr :source $MYVIMRC <CR>

let g:loaded_netrw        = 1 " Disable netrw
let g:loaded_netrwPlugin  = 1 " Disable netrw
let g:sneak#streak = 1
hi SneakPluginTarget guifg=black guibg=red ctermfg=black ctermbg=red
hi SneakPluginScope  guifg=black guibg=yellow ctermfg=black ctermbg=yellow
autocmd VimEnter * IndentGuidesEnable 
autocmd VimEnter * NumbersToggle 

let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.git = {
      \ 'description' : '            gestionar repositorios git
      \                            ⌘ [espacio]g',
      \}
let g:unite_source_menu_menus.git.command_candidates = [
      \['▷ tig                                                        ⌘ ,gt',
      \'normal ,gt'],
      \['▷ git status       (Fugitive)                                ⌘ ,gs',
      \'Gstatus'],
      \['▷ git diff         (Fugitive)                                ⌘ ,gd',
      \'Gdiff'],
      \['▷ git commit       (Fugitive)                                ⌘ ,gc',
      \'Gcommit'],
      \['▷ git log          (Fugitive)                                ⌘ ,gl',
      \'exe "silent Glog | Unite quickfix"'],
      \['▷ git blame        (Fugitive)                                ⌘ ,gb',
      \'Gblame'],
      \['▷ git stage        (Fugitive)                                ⌘ ,gw',
      \'Gwrite'],
      \['▷ git checkout     (Fugitive)                                ⌘ ,go',
      \'Gread'],
      \['▷ git rm           (Fugitive)                                ⌘ ,gr',
      \'Gremove'],
      \['▷ git mv           (Fugitive)                                ⌘ ,gm',
      \'exe "Gmove " input("destino: ")'],
      \['▷ git push         (Fugitive, salida por buffer)             ⌘ ,gp',
      \'Git! push'],
      \['▷ git pull         (Fugitive, salida por buffer)             ⌘ ,gP',
      \'Git! pull'],
      \['▷ git prompt       (Fugitive, salida por buffer)             ⌘ ,gi',
      \'exe "Git! " input("comando git: ")'],
      \['▷ git cd           (Fugitive)',
      \'Gcd'],
      \]
nnoremap <silent>[menu]g :Unite -silent -start-insert menu:git<CR>

set hidden
set confirm

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules/     " MacOSX/Linux
set incsearch ignorecase hlsearch
set whichwrap+=h,l

filetype plugin indent on 

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
"set ambiwidth=double

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"

" For snippet_complete marker.
" if has('conceal')
"   set conceallevel=2 concealcursor=i
" endif
