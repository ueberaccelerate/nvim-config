call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'plasticboy/vim-markdown'
Plug 'altercation/vim-colors-solarized'
Plug 'ChaiScript/vim-chaiscript'
Plug 'ChaiScript/vim-cpp'
" Plug 'Mizuchi/STL-Syntax'
Plug 'kien/rainbow_parentheses.vim'

" Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

" let g:doxygen_enhanced_color=1
" let g:load_doxygen_syntax=1

set expandtab
set shiftwidth=2
set lcs=trail:·,tab:»·
set list
set cursorline
set number

let g:gitgutter_sign_column_always = 1

let g:airline_powerline_fonts=1
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

set background=dark
let g:gruvbox_contrast_light="soft"
colorscheme gruvbox

"let g:solarized_termcolors = 256
"colorscheme solarized

let g:vim_markdown_frontmatter = 1

let g:vim_indent_guides_start_level = 2


set laststatus=2

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

au VimEnter * RainbowParenthesesActivate
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
" au Syntax * RainbowParenthesesLoadChevrons



