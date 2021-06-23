scriptencoding utf-8
:set encoding=utf-8

:set laststatus=2 					" Display file name at the bottom permanently
:set incsearch 						" Search as characters are entered
:set hlsearch 						" Highlight matches
:set autoread 						" Autoreload file in Vim if its changed outside of Vim
:set tabstop=4 						" Number of spaces per tab=4
:set smartindent 					" Even better autoindent (e.g. add indent after '{')
:syntax enable 						" Syntax highlighting
:colorscheme slate					" murphy and slate are good
:set background=dark				" Dark background
:set ruler 							" Show line number and column number in the statusline
:set showmatch 						" Highlight matching paranthesis/brackets [{()}]
:set wrap 							" Wrap Lines
:set number 						" Show Line Numbers
:set ignorecase 					" Ignore Case when Searching
:set timeoutlen=1000 ttimeoutlen=0 	" Remove timeout when hitting escape
:set wildmenu 						" Tab autocomplete in command mode
:set noerrorbells novisualbell 		" Turn off visual and audible bells
:set showcmd						" Show size of visual selection
:set nowrap							" Don't wrap long lines
:set ttyfast						" Send more characters in fast terminals
:set history=1000					" Number of lines of history VIM remembers
:set backspace=eol,start,indent		" Configure backspace so it acts as it should act

:set listchars=tab:>-,trail:.,precedes:<,extends:> " Different Chars for different spaces
