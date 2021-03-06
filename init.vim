" auto-install vim-plug                                                                                                                
"if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
"  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                                             
"  autocmd VimEnter * PlugInstall                                                                                                      
" endif                                                                                                                                 
call plug#begin()
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ryanoasis/vim-devicons'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'sheerun/vim-polyglot'
Plug 'kristijanhusak/vim-carbon-now-sh'
call plug#end()


source ~/.config/nvim/general.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/nerdcommenter.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/vimrooter.vim
source ~/.config/nvim/fugitive.vim
source ~/.config/nvim/carbonnowsh.vim

