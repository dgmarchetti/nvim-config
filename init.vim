
" Basic configurations---------------------------------------------{{{

so ./basic-config.vim

" }}}

" Plugins installation ---------------------------------------------{{{
so ./plugins-installation.vim

" }}}

" Plugins settings  ---------------------------------------------{{{

"Load configuration for Conquer of completion
so ~/.config/nvim/coc-config.vim

" Load configuration for Markdown Preview 
so ~/.config/nvim/markdown-preview.vim

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

"let g:python3_host_prog = '/opt/homebrew/bin'

" }}}

" Theme settings  ---------------------------------------------{{{

" Set backgroud dark/light
" use with colorschemes: PaperColor, One(vim-one), Palenight
set background=light

"Set colorscheme (Theme)
"colorscheme gruvbox
colorscheme one
"let g:gruvbox_contrast_dark = "hard"

" Set colorscheme to statusline
" Lightline
"let g:lightline = {'colorscheme': '<theme>'}
" Airline statusline 
" Use one theme from https://github.com/vim-airline/vim-airline-themes/blob/master/doc/airline-themes.txt
"let g:airline_theme = {'colorscheme': '<theme>'}
"let g:airline_theme='ayu_light'
let g:airline_theme = 'onedark'

" }}}

" Mappings ---------------------------------------------{{{

" Mappings code goes here.

" Set the space as the leader key.
let mapleader = " "

" Type jj to exit insert mode quickly.
inoremap jj <Esc>

" Press the space bar to type the : character in command mode.
"nnoremap <space> :

" Remaps for :w y :q
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" Plugins
" NERDTree
map <Leader>nt :NERDTreeFind<CR>  
" Tagbar
map <Leader>tt :TagbarToggle<CR>

" Map the F5 key to run a Python script inside Vim.
" I map F5 to a chain of commands here.
" :w saves the file.
" <CR> (carriage return) is like pressing the enter key.
" !clear runs the external clear screen command.
" !python3 % executes the current file with Python.
map <Leader>py :w <CR>:!clear <CR>:!python3 % <CR>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" Vimux Mapping
 " Run the current file with rspec
 map <Leader>go :call VimuxRunCommand("clear; go run " . bufname("%"))<CR>

 " Prompt for a command to run
 map <Leader>vp :VimuxPromptCommand<CR>

 " Run last command executed by VimuxRunCommand
 map <Leader>vl :VimuxRunLastCommand<CR>

 " Inspect runner pane
 map <Leader>vi :VimuxInspectRunner<CR>

 " Close vim tmux runner opened by VimuxRunCommand
 map <Leader>vq :VimuxCloseRunner<CR>

 " Interrupt any command running in the runner pane
 map <Leader>vx :VimuxInterruptRunner<CR>

 " Zoom the runner pane (use <bind-key> z to restore runner pane)
 map <Leader>vz :call VimuxZoomRunner()<CR>

 " Clear the terminal screen of the runner pane.
 map <Leader>v<C-l> :VimuxClearTerminalScreen<CR>

" }}}

" VIMScripts ---------------------------------------------{{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.
" If you want to match colors in vim and in your terminal exactly, you must enable true colors (24 bit).
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


" }}}

" Status Line ---------------------------------------------{{{

" Status bar code goes here.
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Show the status on the second to last line.
set laststatus=2

" }}}

