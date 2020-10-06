" �����ļ��������
filetype on
" ������⵽�Ĳ�ͬ���ͼ��ض�Ӧ�Ĳ��
filetype plugin on

" ���崥����
let mapleader = ';'

" �����ñ��������Ч
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" ����ʵʱ��������
set incsearch
" ����ʱ��Сд������
" set ignorecase
" �رռ���ģʽ
set nocompatible
" vim ����������ģʽ���ܲ�ȫ
set wildmenu

" vundle ��������
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle ����Ĳ���б����λ�� vundle#begin() �� vundle#end() ֮��
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ggreer/the_silver_searcher'
Plugin 'mileszs/ack.vim'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'kien/ctrlp.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'vim-scripts/gdbmgr'
Plugin 'ervandew/supertab'
" Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
" ����б����
call vundle#end()
filetype plugin indent on

" ��ɫ����
set background=dark
colorscheme molokai
highlight comment ctermfg=69
highlight normal ctermfg=256 ctermbg=256
" ����״̬��������
" let g:Powerline_colorscheme='solarized256'

" ���֧��
set ttymouse=xterm

" ����vimɫ��256ɫ
if &term=="xterm"
    set t_Co=256
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif

"���ð�������
set helplang=cn
set nocp
set backspace=indent,eol,start
"set encoding=gb2312
"set fileencoding=gb2312
"set termencoding=gb2312
set fencs=utf-8,gb2312
set writebackup
"set backup
set fileformats=unix,dos

set backupdir=~/.vimswaps,/tmp
set showmatch

" ���ļ�ʱ�����ļ�����Ŀ¼Ϊ��ǰĿ¼
"function! CHANGE_CURR_DIR()
"      let _dir = expand("%:p:h")
"      exec "cd " . _dir
"      unlet _dir
"endfunction
"autocmd BufEnter * call CHANGE_CURR_DIR()

" ��ס�ϴδ�λ��
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$") | exe("norm '\"") | else | exe "norm $" | endif | endif

" �����������﷨���д����۵�
"set foldmethod=indent
set foldmethod=syntax
" ���� vim ʱ�ر��۵�����
set nofoldenable

"�Զ��ҵ���·����tags�ļ�
set tags=tags;
set autochdir
"set tags=/root/speech-tts/tags;

" ����һ������
map <F5> :make<CR>

" ����cscopeĿ¼
set csprg=/usr/bin/cscope

" conque GDB���
let g:ConqueTerm_CloseOnEnd = 1
nmap <leader>gd :ConqueGdb<cr>

" ��깤��ģʽ
set mouse=a

" ������ʾ״̬��
set laststatus=2
" ��ʾ��굱ǰλ��
set ruler
" �����к���ʾ
set number
" ������ʾ��ǰ��/��
set cursorline
" set cursorcolumn
" ������ʾ�������
set hlsearch

" ��ֹ�����˸
set gcr=a:block-blinkon0
" ��ֹ��ʾ������
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" ��ֹ��ʾ�˵��͹�����
set guioptions-=m
set guioptions-=T

" ��ֹ����
set nowrap

" �����﷨��������
syntax enable
" ������ָ���﷨������ɫ�����滻Ĭ�Ϸ���
syntax on
syntax keyword cppSTLtype initializer_list

" ����Ӧ��ͬ���Ե���������
filetype indent on
" ���Ʊ����չΪ�ո�
set expandtab
" ���ñ༭ʱ�Ʊ��ռ�ÿո���
set tabstop=4
" ���ø�ʽ��ʱ�Ʊ��ռ�ÿո���
set shiftwidth=4
" �� vim �����������Ŀո���Ϊһ���Ʊ��
set softtabstop=4

" ���ӻ�����
" �� vim ������
let g:indent_guides_enable_on_vim_startup=0
" �ӵڶ��㿪ʼ���ӻ���ʾ����
let g:indent_guides_start_level=2
" ɫ����
let g:indent_guides_guide_size=1
" ��ݼ� i ��/���������ӻ�
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle


" ���� gvim ��ʾ����
" set guifont=yahei_consolas_hybrid\ 11.5


" ��ǩ����
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

" tagbar���
" ���� tagbar �Ӵ��ڵ�λ�ó��������༭�����ұ� 
let tagbar_right=1
" ������ʾ�����ر�ǩ�б��Ӵ��ڵĿ�ݼ����ټǣ�identifier list by tag
nnoremap <Leader>llt :TagbarToggle<CR> 
" ���ñ�ǩ�Ӵ��ڵĿ��
let tagbar_width=32
" tagbar �Ӵ�������ʾ���������Ϣ 
let g:tagbar_compact=0


" ����ctags��ݼ�����������ctags�ļ����ǵ��ڸ�Ŀ¼�µ���
nmap cg :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
" ���� ctags ����Щ�����ʶ�����ɱ�ǩ
" let g:tagbar_type_cpp = {
"    \ 'kinds' : [
"         \ 'c:classes:0:1',
"         \ 'd:macros:0:1',
"         \ 't:typedefs:0:1',
"         \ 'e:enumerators:0:0', 
"         \ 'f:functions:0:1',
"         \ 'g:enumeration:0:1',
"         \ 'm:members:0:1',
"         \ 'n:namespaces:0:1',
"         \ 'p:functions_prototypes:0:1',
"         \ 's:structs:0:1',
"         \ 'u:unions:0:1',
"         \ 'v:global:0:1',
"         \ 'x:external:0:1',
"         \ 'l:local:0:1'
"     \ ],
"     \ 'sro'        : '::',
"     \ 'kind2scope' : {
"         \ 'g' : 'enum',
"         \ 'n' : 'namespace',
"         \ 'c' : 'class',
"         \ 's' : 'struct',
"         \ 'u' : 'union'
"     \ },
"     \ 'scope2kind' : {
"         \ 'enum'      : 'g',
"         \ 'namespace' : 'n',
"         \ 'class'     : 'c',
"         \ 'struct'    : 's',
"         \ 'union'     : 'u'
"     \ }
"\ }

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" UltiSnips �� tab ���� YCM ��ͻ�������趨
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
let g:UltiSnipsSnippetDirectories=["mysnippets"]


" �Զ���ȫc++��׼��
let OmniCpp_DefaultNamespaces = ["_GLIBCXX_STD"]
set tags+=/usr/include/c++/4.4.7/stdcpp.tags
"set tags+=/usr/include/c++/4.4.4/stdcpp.tags
"set tags+=/usr/include/c++/3.4.6/stdcpp.tags

" ʹ�� NERDTree ����鿴�����ļ������ÿ�ݼ����ټǣ�file list
nmap <Leader>fl :NERDTreeToggle<CR>
" ʥ������ʾ���
let NERDChristmasTree=0
" ����NERDTree�Ӵ��ڿ��
let NERDTreeWinSize=35
" ָ�����ģʽ��1.˫���򿪣�2.��Ŀ¼˫�ļ���3.�����򿪣�
let NERDTreeMouseMode=3
" ȷ���Ƿ�ı�Vim��CWD
let NERDTreeChDirMode=0
" �Ƿ���ʾ��ǩ�б�
let NERDTreeShowBookmarks=1
" ������ʾ�����ļ�
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" ����NERDTree�Ӵ���λ��
let NERDTreeWinPos="left"
" ���û��ָ���ļ������Զ���NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" ���ֻ��NERTree�򿪣���ر�vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" ��ʾ�����ļ�
let NERDTreeShowHidden=1
" NERDTree �Ӵ�������ʾ���������Ϣ
let NERDTreeMinimalUI=0
" ɾ���ļ�ʱ�Զ�ɾ���ļ���Ӧ buffer
let NERDTreeAutoDeleteBuffer=1


" buffer list���
" ��ʾ/���� MiniBufExplorer ����
map <Leader>bl :MBEToggle<CR>
" buffer �л���ݼ�
" map <C-Tab> :MBEbn<cr>
" map <C-S-Tab> :MBEbp<cr>


" �Զ�ѡ���������м������
" ��ݼ�
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)
" ��������Щ��Է�
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]


" ctrap
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif,*.obj "
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
if executable('ag')
" Use Ag over Grep
set grepprg=ag\ --nogroup\ --nocolor
" Use ag in CtrlP for listing files.
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" Ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0
endif


" ʹ�� ctrlsf.vim
" ����ڹ�����ȫ�ֲ��ҹ�����ڹؼ��֣����ÿ�ݼ�����ݼ��ټǷ���search in project
" ʹ��ag��Ϊ�ײ��������ӿ��ٶ�
let g:ctrlsf_ackprg = 'ag'
nnoremap <Leader>sf :CtrlSF<CR>
" ��ʾ�ڴ��ڵײ�
let g:ctrlsf_position = 'bottom'
" ��ʾ������������
let g:ctrlsf_context = '-B 5 -A 3'
" ���س������Զ��رմ���
let g:ctrlsf_auto_close = 0
" ctrl+f���ٴ�����
nmap <C-F> <Plug>CtrlSFPrompt

" ��ǩ��ȫ
set completeopt=longest,menu 

" SuperTab
let g:SuperTabDefaultCompletionType="context"  

" vim-bookMarks
" ������ʾ��ǩ��
let g:bookmark_highlight_lines = 1

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
