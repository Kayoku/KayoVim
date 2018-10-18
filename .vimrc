set nocompatible
filetype off
set encoding=utf-8

" powerline
set laststatus=2
set t_Co=256

" Navigations
" On peut naviguer entre les fenêtres avec Ctrl+H/J/K/L
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Python file indentation
au BufNewFile, BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

" Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'Vundle/Vundle.vim'
	Plugin 'Valloric/YouCompleteMe'
	Plugin 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim/'}
	Plugin 'scrooloose/syntastic'

	let g:ycm_confirm_extra_conf = 0
	let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

	" Syntastic uniquement pour python
	" avec les 3 checkers pylint, bandit et flake8

	let g:syntastic_mode_map = {
		\ "mode" : "passive",
		\ "active_filetypes" : ["python"],
		\ "passive_filetypes" : [] }
	let g:syntastic_python_checkers = ['pylint', 'flake8', 'bandit']
	let g:syntastic_aggregate_errors = 1
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0

call vundle#end()          " required
filetype plugin indent on  " required

" To add:
"   Show the useless space
"   Folding ?
"   theme ?
"   ALE when vim >= 8

""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO

" Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" YouCompleteMe
" sudo apt-get install build-essential cmake python-dev python3-dev
" mkdir ~/.vim ; mkdir ~/.vim/bundle  ; c ~/.vim/bundle
" git clone https://github.com/Valloric/YouCompleteMe
" git submodule update --init --recursive
" ./install.py --all
" add "set (CMAKE_EXPORT_COMPILE_COMMANDS ON)" on CMakeList.txt
" :PluginInstall
" wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
" wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
" mv PowerlineSymbols.otf /usr/share/fonts/
" fc-cache -vf /usr/share/fonts/
" mv 10-powerline-symbols.conf /etc/fonts/conf.d/
" pip3 install pylint bandit flake8
