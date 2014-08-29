set cindent
syntax on
set nu
set ts=4
set sw=4
set sts=4
set expandtab

"http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/"
"python plugin"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

filetype plugin indent on

" A new split should appear listing the Vundle bundle.
" :BundleList

" The rest of your config follows here

" Highlight excess line length

augroup vimrc_autocmds
    autocmd!
"   highlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
    augroup END


" It shows you your current mode (NORMAL), the current branch in Git, the file
" you are editing and some other useful information.
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Powerline setup
 set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
 set laststatus=2

" Fugitive is a Git plugin. It basically wraps most Git commands so that you can call them from inside Vim.
Bundle 'tpope/vim-fugitive'

" NerdTree is a filebrowser that pops up in a split when you need it and features a tree like file browser 
Bundle 'scrooloose/nerdtree'

" To activate with ctrl+d add the following to
map <c-d> :NERDTreeToggle<CR>

" If you want to open NERDTree when vim starts
"au VimEnter * NERDTreeToggle

" Python mode setting
" Things like Lint, codecompletion, documentation lookup,
" jump to classes, refactoring tools etc.
"Bundle 'klen/python-mode'

