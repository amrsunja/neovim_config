call plug#begin('~/.config/nvim/plugged')

" File and folder management
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'natebosch/dartlang-snippets'

" Language support
Plug 'tpope/vim-projectionist'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

"42 header
Plug '42Paris/42header'

" Dart
Plug 'dart-lang/dart-vim-plugin'
"Plug 'thosakwe/vim-flutter'

" Typescript
" Plug 'ianks/vim-tsx'
" Plug 'leafgarland/typescript-vim'

" Git
"Plug 'tpope/vim-fugitive'
"Plug 'vim-airline/vim-airline'

" Themes
Plug 'morhetz/gruvbox'
Plug 'https://github.com/srcery-colors/srcery-vim'
Plug 'wojciechkepka/vim-github-dark'
Plug 'flazz/vim-colorschemes'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'

call plug#end()

"HEADER 42 CONFIG
let g:user42 = 'aazdoev'
let g:mail42 = 'aazdoev@student.42.fr'

colorscheme gruvbox

" Sonokai configuration
" Important!!
if has('termguicolors')
	set termguicolors
endif
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'shusia'
let g:sonokai_better_performance = 1

"let g:sonokai_cursor = 'orange' 
"let g:sonokai_transparent_background = 1
"let g:sonokai_disable_terminal_colors = 1

" background transperensy
"highlight Normal ctermbg=none
"highlight NonText ctermbg=none

	" raggi
	" nofrils-light
	" pride
  " space-vim-dark
  " skittles_autumn 
  " predawn 
  " herald
  " happy_hacking
  " luna-term
  " kolor
  " inori
  " itg_flat_ ? trasparent 
  " jitterbug
  " ghdark 
  " mustang
  " minimalist
  " predawn
  " scheakur
  " SerialExperimentsLain
  " neodark
  " flattr 
  " srcery 
  " gruvbox 
  " deus 
  " space-vim-dark
  " oceanic_material
  "
  " continue... blazer



set mouse=a
set noerrorbells                                              " Don't add sounds for errors
set number
set nowrap
set nohlsearch
set smartcase
set noswapfile
set nobackup
set undodir=~/AppData/Local/nvim-data/backup
set undofile
set incsearch
set softtabstop=0 
" tabs
set smartindent
set tabstop=2
set shiftwidth=2
set noexpandtab "expandtab
autocmd FileType c setlocal shiftwidth=4 tabstop=4 noexpandtab


" set colorcolumn=120
set clipboard=unnamedplus
set backspace=indent,eol,start
highlight ColorColumn ctermbg=none guibg=none

let mapleader=" "
nnoremap <leader>fe :CocCommand flutter.emulators <CR>
nnoremap <leader>fd :below new output:///flutter-dev <CR>
map <leader>h :wincmd h <CR>
map <leader>j :wincmd j <CR>
map <leader>k :wincmd k <CR>
map <leader>l :wincmd l <CR>

"switch between tabs
"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
nnoremap <C-n> :NERDTreeToggle<CR>
" nnoremap <C-S-b> :NERDTreeFind<CR>

"let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length 120']

" Coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <C-P> :FZF<CR>

nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>

imap <tab> <Plug>(coc-snippets-expand)
let g:UltiSnipsExpandTrigger = '<Nop>'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

"coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-flutter',
  \ 'coc-snippets',
  \ 'coc-yaml',
  \ 'coc-tslint-plugin',
  \ 'coc-json',
  \ ]

" NERDTREE
let g:NERDTreeGitStatusWithFlags = 1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$', '\.git$'] " ignore files in nerd tree


" == AUTOCMD ================================ 
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" == AUTOCMD END ================================ 
