set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
" http://benmccormick.org/2014/07/21/learning-vim-in-2014-getting-more-from-vim-with-plugins/ 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here') "
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'nelsyeung/twig.vim'
Plugin 'cg433n/vim-lilypond'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
Plugin 'vim-scripts/fountain.vim'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"execute pathogen#infect()
"Now any plugins you wish to install can be extracted to a subdirectory under
"~/.vim/bundle, and they will be added to the 'runtimepath'. Observe:
"
"cd ~/.vim/bundle && \
"git clone git://github.com/tpope/vim-sensible.git
"sensible is now on the system

syntax on

" First command, swap CAPS LOCK and ESC keys
" !xmodmap ~/.speedswapper
" Text wrapping, like a word processor
:set wrap
" Vim will only wrap at a character in the breakat option
:set linebreak
:set nolist
" prevent Vim from auto inserting line breaks in 
" newly entered text
:set textwidth=0
:set wrapmargin=0
"keep existing textwidth settings for most lines
"in your file, but not have vim automatically reformat
"when typing on existing lines
:set formatoptions+=1

" set hard tabs to 4 and >> commands to 4
:set shiftwidth=4
:set tabstop=4

" Nerd Tree Settings
" allow vim to close NERD Tree if it is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"
"     How can I close vim if the only window left open is a NERDTree?
"
"     Stick this in your vimrc:
"
"

" mapping shortcuts
:map <F2> :!xmodmap ~/.speedswapper<CR>
:map <F3> :echo 'Current time is ' . strftime('%c')<CR>
:map <F4> :!php -l %<CR>
" NERDTree Mappings
:map <C-n> :NERDTreeToggle<CR>

" Unused Comments / Notes
"
" Use bold bright fonts.
" set background=dark
"
" Show tabs and trailing characters.
"set listchars=tab:»·,trail:·,eol:¬
" set listchars=tab:»·,trail:·
" set list
"
" Reformat paragraphs and list.
" nnoremap <Leader>r gq}
"
" Delete trailing white space and Dos-returns and to expand tabs to spaces.
" nnoremap <Leader>t :set et<CR>:retab!<CR>:%s/[\r \t]\+$//<CR>
"
"autocmd BufRead,BufNewFile
"*.txt,*.asciidoc,README,TODO,CHANGELOG,NOTES,ABOUT
"	\ setlocal autoindent expandtab tabstop=8 softtabstop=2 shiftwidth=2 filetype=asciidoc
"	\ textwidth=70 wrap formatoptions=tcqn
"	\ formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\\|^\\s*<\\d\\+>\\s\\+\\\\|^\\s*[a-zA-Z.]\\.\\s\\+\\\\|^\\s*[ivxIVX]\\+\\.\\s\\+
"	\ comments=s1:/*,ex:*/,://,b:#,:%,:XCOMM,fb:-,fb:*,fb:+,fb:.,fb:>
"
" this allows the = sign to format xml files only if vim detects the file is xml
" = allows a select to be sent to an external command and the result to be pasted
" au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
" au FileType xml setlocal equalprg= 2>/dev/null
"
" mapping a program for jslinting
":map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>
"
filetype off
set runtimepath+=/usr/local/share/lilypond/current/vim/
filetype on
syntax on

autocmd BufRead, BufNewFile *.php setlocal expandtab softtabstop=4 shiftwidth=4 filetype=php
