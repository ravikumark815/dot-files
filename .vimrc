scriptencoding utf-8
:set encoding=utf-8

:set laststatus=2 					" Display file name at the bottom permanently
:set incsearch 						" Search as characters are entered
:set hlsearch 						" Highlight matches
:set ignorecase 					" Ignore Case when Searching
:set autoread 						" Autoreload file in Vim if its changed outside of Vim
:set tabstop=4 softtabstop=4		" Number of spaces per tab=4
:set smartindent 					" Even better autoindent (e.g. add indent after '{')
:syntax enable 						" Syntax highlighting
:colorscheme monokai				" murphy and slate are good
:set ruler 							" Show line number and column number in the statusline
:set showmatch 						" Highlight matching paranthesis/brackets [{()}]
:set matchpairs+=<:>				" Use % to jump between braces and highlight matching paranthesis/brackets [{()}]
:set wrap 							" Wrap Lines
:set number 						" Show Line Numbers
:set timeoutlen=1000 ttimeoutlen=0 	" Remove timeout when hitting escape
:set wildmenu 						" Tab autocomplete in command mode
:set noerrorbells novisualbell 		" Turn off visual and audible bells
:set showcmd						" Show size of visual selection
:set nowrap							" Don't wrap long lines
:set mouse=a						" Enable mouse mode
:set ttyfast						" Speed up scrolling by sending more characters in fast terminals
:set history=1000					" Number of lines of history VIM remembers
:set noswapfile						" No swap files in my project
:set backspace=eol,start,indent		" Configure backspace so it acts as it should act
:set listchars=tab:>-,trail:.,precedes:<,extends:> " Different Chars for different spaces
:set tags=./tags;/					" Makes vim look for tags file in previous dirs until it finds one
:set nocscopeverbose


" Vim-Plug https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
call plug#end()
