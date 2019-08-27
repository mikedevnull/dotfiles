" Function to source only if file exists
" taken from https://devel.tech/snippets/n/vIIMz8vZ/load-vim-source-files-only-if-they-exist/
function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
  execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" filesystem tree browser
Plug 'scrooloose/nerdtree'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" nice icons for airline and nerdtree
Plug 'ryanoasis/vim-devicons'

" Fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim'

" Async syntax checker
Plug 'dense-analysis/ale'

" python indetion
Plug 'Vimjas/vim-python-pep8-indent'

" automatic source code formatting
Plug 'Chiel92/vim-autoformat'

" autocompletion
Plug 'ycm-core/YouCompleteMe'

" tags and file layout in window
Plug 'majutsushi/tagbar'

" automatic open/closing parenthesis etc.
Plug 'jiangmiao/auto-pairs'

" multi cursor editing
Plug 'terryma/vim-multiple-cursors'

" vue component support
Plug 'leafOfTree/vim-vue-plugin'

call plug#end()

" elementary default settings
syntax on
set number
set expandtab
set shiftwidth=2
set softtabstop=2

filetype plugin indent on

filetype plugin on

" hemisu color scheme
set background=dark
colorscheme hemisu

" airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set encoding=utf8
set guifont=Hack\ Nerd\ Font:h11

" autoformat on save
au BufWrite * :Autoformat

" enable direnv python-layout-virtualenv support for ale
let g:ale_virtualenv_dir_names = ['.direnv/python-*', '.env', '.venv', 'env', 've-py3', 've', 'virtualenv', 'venv']

" vim vue: do not fold component code on load
let g:vim_vue_plugin_use_foldexpr = 0

" Keymappings
nmap <F8> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

nmap <F7> :TagbarToggle<CR>

call SourceIfExists("~/.vimrc.local")
