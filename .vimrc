" All system-wide defaul:ts are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
" and configure vim to your own liking!
let s:base = "~/.vim/.config/base"
execute("source ".. s:base)
"source ~/.vim/.config/base
"закрытие скобок
imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>
"закрытие кавычек
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

"autocmd VimEnter * NERDTree
"Команда котора говорит NERDTree всегда отображать скрытые файлы и папки
let NERDTreeShowHidden=1


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vim-scripts/taglist.vim'
"Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/CCTree'
Plugin 'mattn/emmet-vim'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'scrooloose/nerdtree'
Plugin 'hushicai/tagbar-javascript.vim'  
Plugin 'tpope/vim-surround'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
":Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

let g:tagbar_ctags_bin ="/home/dimkl/package/ctags-5.8/ctags"  


""call vundle#begin()
""execute("Plugin 'scrooloose/nerdtree'")
""call vundle#end()


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"--------send selected word to google search----------------
"------------@* - selected text in visual mode -------------
vmap <C-d> :call Send()<ENTER>
function! Send()
let exStr = '!sudo -u dimkl netsurf https://www.google.ru/search?q=' . @*
	execute(exStr)

endfunction
"------------end-----------------------
"----copy paste system buffer------------
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>a
vmap <C-C> "+y
"-----------------------------------------

"--------ctrl-z------------
nmap <C-Z> u
imap <C-Z> <ESC>ui
vmap <C-Z> <ESC>uv

"--------switch window------------------
nmap <A-Down> <C-w><Down>
nmap <A-Up> <C-w><Up>
nmap <A-Left> <C-w><Left>
nma  <A-Right> <C-w><Right>
"----------------------------------------

"------------resize window------------
nmap <S-Right> <ESC><C-w>>
nmap <S-Left> <ESC><C-w><
nmap <S-Up> <ESC><C-w><kPlus>
nmap <S-Down> <ESC><C-w><kMinus>
"------------------------------------

"-----------Ctrl-S---------------
map <C-S> :w<ENTER>
vmap <C-S> <ESC><C-S>v
"imap <C-S> <ESC><C-S>a
"---------------------------------


"--------------------------------
"---------Translate Text---------------
function! MyBalloonExpr()
   return system("sdcv ". v:beval_text)
endfunction
"set bexpr=MyBalloonExpr()
"set ballooneval
"set balloondelay=200
"set lines=50
"---------------------------------------


"-------rusian-locale----switch Ctrl+^-----

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

"------------------------------



"--------Вставка буквы Ё 
