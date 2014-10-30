" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'git@github.com:gmarik/vundle'
Bundle 'git@github.com:kien/ctrlp.vim.git'
Bundle 'git@github.com:scrooloose/nerdtree'
Bundle 'git@github.com:endel/vim-github-colorscheme.git'
Bundle 'vim-ruby/vim-ruby'
Bundle 'git@github.com:tpope/vim-surround.git'
Bundle 'git@github.com:ervandew/supertab.git'

filetype on
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set showcmd "Show incomplete cmds down the bottom
set showmode "Show current mode down the bottom
set visualbell "No sounds
set autoread "Reload files changed outside vim
" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden
"turn on syntax highlighting
syntax on
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set nobackup
set noswapfile

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" thoughtbot dotfiles grep
set backspace=2   " Backspace deletes like most programs in insert mode
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set relativenumber

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

"Thoughtbot extras: source http://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
"Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"More natural split opening
set splitbelow
set splitright

set pastetoggle=<F2>
set undofile
nmap <silent> <F3> :NERDTreeToggle<CR>

