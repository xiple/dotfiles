" Prevent unexpected things the distro may have made for vim
set nocompatible

" For line numbers
set number

" Display vertical bar limit
set colorcolumn=80

" Each tab are replaced by spaces
set expandtab

" Four spaces for each tab
set tabstop=4

" Four spaces for indentation
set shiftwidth=4

" Auto indentation
set autoindent

" In case backspase is not erasing
set backspace=indent,eol,start

" Enable syntax highligthing
syntax on

" Monokai colorscheme
colorscheme monokai

" Enable search highligthing (:noh for disabling)
set hlsearch

" Search as you type
set incsearch

" Case insensitive search except when using capital letters
set ignorecase
set smartcase

" Use visual bell instead of beeping when something wrong
set visualbell

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Remap <ESC> key to jj in insert mode
"inoremap jj <ESC>

" Better command auto-completion
set wildmenu

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Disable swap file
set noswapfile

" Automatically insert closing brackets (undo is interrupted)
"inoremap {      {}<Left>
"inoremap {<CR>  {<CR>}<Esc>O
"inoremap {{     {
"inoremap {}     {}
