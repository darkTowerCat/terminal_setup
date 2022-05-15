set mouse=a
set number
" Having longer updatetime (default is 4000 ms) leads to noticeable delays and poor user experience
set updatetime=300

" When you type the first tab, it will complete as much as possible, the second
" tab hit will provide a list, the third and subsequent tabs will cycle through
" completion options so you can complete the file without further keys
set wildmode=longest,list,full
set wildchar=<Tab>
set wildmenu       " provide navigable list of suggestions (tab, C-n, right; S-tab, C-p, left)
set wildignorecase " case insensitive :filename completion

set incsearch      " find as you type search
set hlsearch       " highlight search terms
set winminheight=0 " windows can be 0 line high
set ignorecase     " case insensitive search
set smartcase      " become temporarily case sensitive when any uppercase letters present in search string

set autoindent   " indent at the same level of the previous line
set shiftwidth=2 " use indents of 2 spaces
set expandtab    " tabs should be spaces for sanity

" remove search highlights
map <silent><leader>. :nohl<cr>:

" remove trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Setting up the directories {
set backup " backups are nice
set backupdir=$HOME/.vimbackup " but not when they clog .
set directory=$HOME/.vimswap " Same for swap files
set viewdir=$HOME/.vimviews " same but for view files
set undodir=$HOME/.vimundo " ditto

" Creating directories if they don't exist
silent execute '!mkdir -p $HOME/.vimbackup'
silent execute '!mkdir -p $HOME/.vimswap'
silent execute '!mkdir -p $HOME/.vimviews'
silent execute '!mkdir -p $HOME/.vimundo'
