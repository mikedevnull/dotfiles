syntax on
set expandtab
set shiftwidth=2
set softtabstop=2
set number

filetype plugin indent on

filetype plugin on

if has ("gui_running")
  set lines=70 columns=200
endif

" syntax for doxygen file
au BufNewFile,BufRead *.dox setfiletype cpp.doxygen

" syntax for c++11
au BufNewFile,BufRead *.cpp set syntax=cpp11 

execute pathogen#infect()
execute pathogen#helptags()

nmap <F8> :NERDTreeToggle<CR>
nmap <F7> :TagbarToggle<CR>

" hemisu color scheme
set background=dark
colorscheme hemisu

let g:airline#extensions#tabline#enabled = 1


