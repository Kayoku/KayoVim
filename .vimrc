set softtabstop=4 expandtab tabstop=4 shiftwidth=4 smarttab

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'Valloric/YouCompleteMe'
    let g:ycm_confirm_extra_conf = 0
    let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
    let g:ycm_python_binary_path = '/usr/bin/python3'
call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO

" Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" YouCompleteMe
" sudo apt-get install build-essential cmake
" sudo apt-get install python-dev python3-dev
" mkdir ~/.vim ; mkdir ~/.vim/bundle  ; c ~/.vim/bundle
" git clone https://github.com/Valloric/YouCompleteMe
" git submodule update --init --recursive
" ./install.py --clang-completer
" (not sure) download CLang http://releases.llvm.org/download.html
" extract this in ~/.vim/bundle/ycm_clang
" mkdir ~/.vim/bundle/ycm_build ; cd ~/.vim/bundle/ycm_build
" cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=~/.vim/bundle/ycm_clang . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
" cmake --build . --target ycm_core
" add "set (CMAKE_EXPORT_COMPILE_COMMANDS ON)" on CMakeList.txt
