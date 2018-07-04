syntax enable  
set number 
set relativenumber
syntax on 
filetype detect 
set shiftwidth=4
set tabstop=4
filetype indent on
set noexpandtab
set smarttab

map <F5> :<C-U>!g++ -O2 -DLOCAL -std=c++14 -Wall -Wextra -Wno-unused-result -static %:r.cpp -o %:r<CR>
map <F9> :<C-U>!./%:r<CR>



:nnoremap <leader>ev :vsplit $MYVIMRC<cr>  


call plug#begin('~/.vim/plugged')
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'vim-syntastic/syntastic'

call plug#end()


set background=dark 
colorscheme gruvbox

autocmd BufNewFile *.cpp -r /home/krishna/Desktop/Code/tempelate.cpp

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++14 -w'


