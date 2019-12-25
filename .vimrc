:set laststatus=2 "Display file name at the bottom permanently
:set incsearch "Search as characters are entered
:set hlsearch "Highlight matches
:set autoread "Autoreload the file in Vim if it has been changed outside of Vim
:set tabstop=4 "Number of spaces per tab=4
:set smartindent "Even better autoindent (e.g. add indent after '{')
:syntax enable "Syntax highlighting
:colorscheme slate "murphy and slate are good
:set ruler "Show line number and column number on right side of the statusline
:set showmatch "Highlight matching paranthesis/brackets [{()}]
:set wrap "Wrap Lines
:set number "Show Line Numbers
"Disabling Visual Flashes on screen
:set ignorecase "Case insensitive search for vim
if has('autocmd')
		autocmd GUIEnter * set visualbell t_vb=
endif
