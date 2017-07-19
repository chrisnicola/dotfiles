set shell=/bin/zsh
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set novisualbell
set noerrorbells
set wildignore+=*.o,*.obj,.git,*.pyc,log,tmp,*.jpg,*.png,*.gif
set title

" We dont need no stinkin' backup or swap files. We use git!
set nobackup
set noswapfile

" Use the system clipboard
set clipboard=unnamedplus

" Custom shortcuts
nmap <leader>ss    :setlocal spell!<cr>
nmap <space> :noh<cr>

" Format paragraphs quickly
vmap Q gq
nmap Q gqap

" Sudo save me a file (and make me a sandwich)
cmap w!! w !sudo tee % >/dev/null

" Some useful things
nmap <leader>rr :checktime<CR>
nmap <leader>rd :redraw!<cr>
nmap <leader>ev :e ~/dotfiles/init.vim<cr>
nmap <leader>sd <Plug>DashSearch
nmap <leader>gd <Plug>DashGlobalSearch
nmap <leader>tp :silent !thyme -d<cr> :redraw!<cr>
nmap <leader>tb :silent !thyme -db<cr> :redraw!<cr>
nmap <leader>rv :so $MYVIMRC<cr>

" Strip whitespace from certain file types
autocmd FileType c,cpp,java,php,rb,coffee,erb,slim,js,scss,css autocmd BufWritePre <buffer> :%s/\s\+$//e

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

set verbosefile=~/.vim.verbose.log

" Pligins

call plug#begin('~/.local/share/nvim/plugged')

" General Plugins
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'neomake/neomake'
Plug 'raimondi/delimitmate'
Plug 'mbbill/undotree'
Plug 'Chiel92/vim-autoformat'

" UI
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'

" Autocompletion
Plug 'Shougo/deoplete.nvim'
Plug 'mhartington/nvim-typescript'
Plug 'ternjs/tern_for_vim'

" Syntax Plugins
Plug 'digitaltoad/vim-pug'
Plug 'vim-javascript'
Plug 'vim-coffee-script'
Plug 'vim-ruby/vim-ruby'
Plug 'rails.vim'
Plug 'othree/html5.vim'
Plug 'JSON.vim'
Plug 'plasticboy/vim-markdown'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'leafgarland/typescript-vim'
Plug 'slim-template/vim-slim'
Plug 'posva/vim-vue'

call plug#end()

" Colors
set termguicolors
colorscheme base16-default-dark
let base16colorspace=256
set background=dark
set listchars=tab:▸\ ,eol:¬
set list

" # Syntax Checking
autocmd! BufWritePost * Neomake

" # Deoplete Autocompletion

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
inoremap <expr> <Tab>  pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
inoremap <expr> <S-Tab>  pumvisible() ? "\<C-p>" : "\<S-Tab>"
" prevent preview window
set completeopt-=preview

" # File search and navigation: neovim-fuzzy
"
nmap <C-e> :NERDTreeToggle<cr>
nnoremap <C-p> :FZF<cr>

" # NERDCommenter Commenting
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

let g:autoformat_verbosemode=1
