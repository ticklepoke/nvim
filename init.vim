call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
call plug#end()

source ~/.config/nvim/general.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/nerdcommentor.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/fugitive.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/vimrooter.vim
source ~/.config/nvim/nerdtree.vim

colorscheme sonokai
set mouse=a
