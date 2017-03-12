" -- ~/.vimrc --
" vim configuration file

"enable colorscheme and syntax highlighting
syntax on

"make the syntax highlighting more visible on dark backgrounds
set background=dark

"make sure we always see an ^M when it is there
set fileformats=unix

"disable creation of backup files"
set nobackup

"have 100 lines of history
set history=100

" display the current mode and partially-typed commands in the status line:
set showmode
set showcmd

" dont wrap lines
set nowrap  

"tabcompletion of commandline/help/topics etc.
set wildmode=list:longest,full

"enable mouse support
set mouse=a

"don't let this file be overwritten
set nomodeline

"have a neat ruler so we know our cursor posistion
set ruler

"set linenumbering
set nu

"set tabs stops and identing
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set autoindent
set smartindent

"show matching parenthis
set showmatch

"enable filetype detection
filetype on

"define some automatic keys
set pastetoggle=<F10>
nmap <F8> :Explore<CR>

"handling copy
function! ToggleCopy()
	if &mouse == 'a'
		set mouse=
		set nonumber
	else
		set mouse=a
		set number
	endif
endfunction

if !has('gui_running')
	map <F9> :call ToggleCopy()<CR>
endif

"draw a line at 80 columns width
if &t_Co >= 256 && &bg == "dark"
    highlight ColorColumn ctermbg=233 guibg=#202020
elseif &t_Co >= 256 && &bg != "dark"
    highlight ColorColumn ctermbg=230 guibg=#e8e9eb
else
    highlight ColorColumn ctermbg=8
endif
set colorcolumn=80
