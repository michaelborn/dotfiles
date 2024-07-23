" Show line numbers and whitespace characters in Vim.
set number
"set list

"Indentation = 2 spaces, no tabs 
" - thanks to http://stackoverflow.com/questions/232562/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim 
filetype plugin indent on

" show existing tab with 2 spaces width
set tabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" On pressing tab, insert 2 spaces
set expandtab

" always highlight search characters when found
set hlsearch

" when you scroll to the bottom/top of the window, jump 12 characters
set scrolljump=8

" high contrast mode
set background=dark

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()


" Plugin 'VundleVim/Vundle.vim'     " let Vundle manage Vundle, required
" Plugin 'LucHermitte/lh-vim-lib'   " required for local_vimrc
" Plugin 'LucHermitte/local_vimrc'  " local vim settings for each project
"Plugin 'Valloric/YouCompleteMe'   " autocomplete for Vim
" Plugin 'ernstvanderlinden/vim-coldfusion'   " Better CF syntax colors



" All of your Plugins must be added before the following line
" call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""" Language-specific indentation, etc. """""""""""
au Filetype Python set1 shiftwidth=4 softtabstop=4 expandtab autoindent
au BufNewFile,BufRead *.cfm,*.cfc   setf cfml

" Coldfusion use tabs, 4 spaces wide!
" See :h tabstop for more info.
autocmd FileType cf setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType cfml setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
