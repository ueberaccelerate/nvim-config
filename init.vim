call plug#begin('~/.config/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'plasticboy/vim-markdown'
Plug 'altercation/vim-colors-solarized'
Plug 'ChaiScript/vim-chaiscript'
Plug 'ChaiScript/vim-cpp'
Plug 'kien/rainbow_parentheses.vim'
Plug 'arecarn/crunch.vim'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'NLKNguyen/papercolor-theme'
Plug 'https://github.com/vim-scripts/headerguard.git'
Plug 'https://github.com/rhysd/vim-clang-format.git'
Plug 'https://github.com/vim-scripts/mru.vim.git'
Plug 'spolu/dwm.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/antoyo/vim-licenses.git'
" Plug 'jeaye/color_coded'
call plug#end()

let g:doxygen_enhanced_color=1
let g:load_doxygen_syntax=1

set expandtab
set shiftwidth=4
set lcs=trail:·,tab:»·
set list
set cursorline
set number
" set relativenumber

" let g:gitgutter_sign_column_always = 1
set signcolumn=yes
" let g:ycm_confirm_extra_conf = 0

let g:airline_powerline_fonts=1
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

set background=dark
let g:gruvbox_contrast_light="hard"
let g:gruvbox_italic=1
let g:gruvbox_invert_signs=0
let g:gruvbox_improved_strings=0
let g:gruvbox_improved_warnings=1
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

set t_Co=256
"let g:airline_theme='PaperColor'
"let g:solarized_termcolors = 256
"colorscheme solarized

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_folding_disabled = 1


let g:vim_indent_guides_start_level = 2

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

map <space> /
map <c-space> ?

let MRU_Max_Entries = 400
map <leader>f :MRU<CR>

let g:licenses_copyright_holders_name = 'Suboch, Vadim <vssuboch@gmail.com>'
set laststatus=2

let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrl_max_height = 20
let g:ctrlp_custorm_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffe'

" set termguicolors
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

au VimEnter * RainbowParenthesesActivate
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" au Syntax * RainbowParenthesesLoadChevrons

set backup
