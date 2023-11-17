" auto-indent after curly braces in Vim
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" backspace over everything in insert mode
set backspace=2

" color theme
if exists('$TMUX')
  " Colors in tmux
  let &t_8f = "<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "<Esc>[48;2;%lu;%lu;%lum"
endif
set termguicolors
syntax enable
set background=dark
colorscheme solarized

" indent multiple times with `shift + >` or `shift + <`
vnoremap < <gv
vnoremap > >gv

" show line number
set number

" auto indent
set ai

" show line number & number of words at the right bottom
set ruler

" enable undercurl in neovim and tumx "
vim.opt.spell = true
vim.opt.spelllang = { 'en_us' }
