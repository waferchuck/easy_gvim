set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set number
set autochdir
set ai
set ignorecase
set smartcase 
set sts=4
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set expandtab
set cindent
"exec 'cd ' . fnameescape('D:\RTC_storage\Local_PurionH_V4.1_Int_t1008097_Workspace\Src\RealTimeApplications')
"colorscheme evening
"set guifont=Consolas:h12:cANSI

"set the default size of VIM
set lines=65 columns=140
"set the default window postion
winpos 60 60

map <S-h> ^
map <S-l> $
nmap <S-k> [[
map <C-i> <C-p>
imap ^? ^H
inoremap <TAB> <C-R>=InserTabWrapper()<CR>


"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation for GitHub; translates to https://github.com/junegunn/seoul256.vim.git
"Plug 'junegunn/seoul256.vim'
Plug 'itchyny/vim-cursorword'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'
"Plug 'preservim/vim-indent-guides'
"Plug 'SirVer/UltiSnips'
"Plug 'luochen1990/rainbow'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/tagbar'
Plug 'jiangmiao/auto-pairs'
"Plug 'tweekmonster/startuptime.vim'
"Plug 'dstein64/vim-startuptime'
"Plug 'dense-analysis/ale'



"Plug 'Yggdroot/indentLine'
"Plug 'nathanaelkane/vim-indent-guides'



" Call plug#end to update &runtimepath and initialize the plugin system.
" - It automatically executes `filetype plugin indent on` and `syntax enable`
call plug#end()

" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

" Color schemes should be loaded after plug#end().
" We prepend it with 'silent!' to ignore errors when it's not yet installed.
"support the indent line


