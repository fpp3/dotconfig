set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set cursorline
set shiftwidth=2
set tabstop=2
set expandtab
set scrolloff=15
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set hlsearch
set history=1000
set colorcolumn=120

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

if &term =~ 'foot'
  let &t_SI = "\e[5 q"
  let &t_EI = "\e[2 q"
  let &t_SR = "\e[4 q"
endif

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

set list
set listchars=tab:»-,trail:·,extends:>,precedes:<,nbsp:␣

call plug#begin()
  Plug 'sheerun/vim-polyglot'
  Plug 'morhetz/gruvbox'
  Plug 'jasonccox/vim-wayland-clipboard'
  Plug 'normen/vim-pio'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'pseewald/vim-anyfold'
  Plug 'vim-autoformat/vim-autoformat'
  Plug 'astoff/digestif'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
colorscheme gruvbox

set clipboard=unnamedplus
set mouse=a

filetype plugin indent on " required
autocmd Filetype * AnyFoldActivate               " activate for all filetypes
set foldlevel=99 " Open all folds

let g:lsp_diagnostics_virtual_text_align="right"
let g:python3_host_prog="/sbin/python"

set spellsuggest=best,10
command! SpellCheck set spelllang=es spell | highlight SpellBad ctermbg=red ctermfg=white | nnoremap gn ]s | nnoremap gp [s | nnoremap da zg | nnoremap dA zG | nnoremap dr zug | nnoremap dR zuG | nnoremap gs z= | nnoremap gc 1z= | echo "gn: sig., gp: ant, da: +dicc, dA: +diccLoc, dr: -dicc, dR: -diccLoc, gs: sugerencias, gc: corregir"
command! SpellClear set nospell | nunmap gn| nunmap gp| nunmap da| nunmap dA| nunmap dr| nunmap dR| nunmap gs| nunmap gc|
