" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 定义触发键
let mapleader = ';'

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
" set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
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
" 插件列表结束
call vundle#end()
filetype plugin indent on

" 配色方案
set background=dark
colorscheme molokai
highlight comment ctermfg=69
highlight normal ctermfg=256 ctermbg=256
" 设置状态栏主题风格
" let g:Powerline_colorscheme='solarized256'

" 鼠标支持
set ttymouse=xterm

" 开启vim色彩256色
if &term=="xterm"
    set t_Co=256
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif

"设置帮助语言
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

" 打开文件时设置文件所在目录为当前目录
"function! CHANGE_CURR_DIR()
"      let _dir = expand("%:p:h")
"      exec "cd " . _dir
"      unlet _dir
"endfunction
"autocmd BufEnter * call CHANGE_CURR_DIR()

" 记住上次打开位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$") | exe("norm '\"") | else | exe "norm $" | endif | endif

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

"自动找到父路径的tags文件
set tags=tags;
set autochdir
"set tags=/root/speech-tts/tags;

" 设置一键编译
map <F5> :make<CR>

" 设置cscope目录
set csprg=/usr/bin/cscope

" conque GDB相关
let g:ConqueTerm_CloseOnEnd = 1
nmap <leader>gd :ConqueGdb<cr>

" 鼠标工作模式
set mouse=a

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 禁止折行
set nowrap

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
syntax keyword cppSTLtype initializer_list

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 可视化缩进
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=0
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle


" 设置 gvim 显示字体
" set guifont=yahei_consolas_hybrid\ 11.5


" 书签操作
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

" tagbar相关
" 设置 tagbar 子窗口的位置出现在主编辑区的右边 
let tagbar_right=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>llt :TagbarToggle<CR> 
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中显示冗余帮助信息 
let g:tagbar_compact=0


" 设置ctags快捷键，快速生成ctags文件，记得在根目录下调用
nmap cg :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
" 设置 ctags 对哪些代码标识符生成标签
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
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
let g:UltiSnipsSnippetDirectories=["mysnippets"]


" 自动补全c++标准库
let OmniCpp_DefaultNamespaces = ["_GLIBCXX_STD"]
set tags+=/usr/include/c++/4.4.7/stdcpp.tags
"set tags+=/usr/include/c++/4.4.4/stdcpp.tags
"set tags+=/usr/include/c++/3.4.6/stdcpp.tags

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 圣诞节显示风格
let NERDChristmasTree=0
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=35
" 指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
let NERDTreeMouseMode=3
" 确定是否改变Vim的CWD
let NERDTreeChDirMode=0
" 是否显示书签列表
let NERDTreeShowBookmarks=1
" 设置显示忽略文件
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 如果没有指定文件，则自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 如果只有NERTree打开，则关闭vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中显示冗余帮助信息
let NERDTreeMinimalUI=0
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1


" buffer list相关
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<CR>
" buffer 切换快捷键
" map <C-Tab> :MBEbn<cr>
" map <C-S-Tab> :MBEbp<cr>


" 自动选择多层括号中间的内容
" 快捷键
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)
" 适用于哪些结对符
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


" 使用 ctrlsf.vim
" 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
" 使用ag作为底层搜索，加快速度
let g:ctrlsf_ackprg = 'ag'
nnoremap <Leader>sf :CtrlSF<CR>
" 显示在窗口底部
let g:ctrlsf_position = 'bottom'
" 显示的上下文行数
let g:ctrlsf_context = '-B 5 -A 3'
" 按回车不会自动关闭窗口
let g:ctrlsf_auto_close = 0
" ctrl+f快速打开搜索
nmap <C-F> <Plug>CtrlSFPrompt

" 标签补全
set completeopt=longest,menu 

" SuperTab
let g:SuperTabDefaultCompletionType="context"  

" vim-bookMarks
" 高亮显示书签行
let g:bookmark_highlight_lines = 1

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
