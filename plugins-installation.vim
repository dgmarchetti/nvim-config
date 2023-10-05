call plug#begin('~/.config/nvim/plugged')
  
  " Lista de plugins
  " Syntax
  Plug 'sheerun/vim-polyglot'
  
  " Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Themes
  " gruvbox
  Plug 'morhetz/gruvbox'
  Plug 'shinchu/lightline-gruvbox.vim'
  "onehalf
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  "PaperColor
  Plug 'NLKNguyen/papercolor-theme'
  "One (vim-one)
  Plug 'rakr/vim-one'
  "Palenight
  Plug 'drewtempelmeyer/palenight.vim'

  " Icons
  Plug 'ryanoasis/vim-devicons'

  " Typing
  Plug 'jiangmiao/auto-pairs'

  " tmux
  Plug 'benmills/vimux'
  Plug 'christoomey/vim-tmux-navigator'

  " IDE
  "Plug 'neoclide/coc.vim', {'branch': 'release'} "instalado usando
  "comandos de este script https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#automation-script
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
  " Nerd Tree
  Plug 'scrooloose/nerdtree'
  Plug 'easymotion/vim-easymotion'
  Plug 'yggdroot/indentline'
  Plug 'mhinz/vim-signify'
  Plug 'preservim/tagbar'
  " comentarios
  Plug 'tpope/vim-commentary'

  " Markdown Preview
  " If you don't have nodejs and yarn
  " use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
  " see: https://github.com/iamcco/markdown-preview.nvim/issues/50
  " Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  " If you have nodejs and yarn
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

call plug#end()
