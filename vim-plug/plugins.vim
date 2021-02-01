" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "looking for words 
    Plug 'easymotion/vim-easymotion'
    "navigate throught tmux files
    Plug 'christoomey/vim-tmux-navigator'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Emmet for html and css autocomplete
    Plug 'mattn/emmet-vim'
 
    "comment several lines at once
    Plug 'preservim/nerdcommenter'
    "fuzzy file: looking for files
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    "Vim airline just the color extension
     Plug 'vim-airline/vim-airline'
call plug#end()

