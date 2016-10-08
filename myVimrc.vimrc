set nocompatible "be iMproved, required

so ~/.vim/plugins.vim


syntax enable

set backspace=indent,eol,start    "Make backspace hebave like every other editor"

set number                  "Let's active line numbers" 
set linespace=25
set noerrorbells visualbell t_vb=
set autowriteall     		"automatically write the file when switching buffers
set complete=.,w,b,u            "set our desired autocompletion matching"
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4



"------------------vim-php-cs-fixer----------------------------"
nnoremap <silent>cf :call PhpCsFixerFixFile()<CR>
let g:php_cs_fixer_level = "psr2" 



"------------------Visuals---------------------------"
colorscheme atom-dark-256
set guifont=Fira_Code:h28
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"we'll fake a custom left padding for each window"
hi LineNr guibg=bg
set foldcolumn=1
hi foldcolumn guibg=bg

hi vertsplit guifg=bg guibg=bg


"------------------Make nerdtreetoggle---------------------------"
nmap nt :NERDTreeToggle<cr>
nmap <C-R> :CtrlPBufTag<cr>
nmap <C-B> :CtrlPMRUFiles<cr>


"------------------Tag---------------------------"
nmap f :tag<space>


"------------------Plugins---------------------------"
"Ctrlp"
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'


"NERDTree"
let NERDTreeHijackNetrw = 0

"------------------Search-------------------------"
set hlsearch
set incsearch


"------------------Split Management-------------------------"
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"------------------Laravel Config-----------------------------"
nmap lr :e app/Http/routes.php<cr>


"------------------Greplace.vim-----------------------------"
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'



"-----------------Vim-php-namespace-------------------------"


"------------------Mappings-------------------------"

nmap ev :tabedit $MYVIMRC<cr>
nmap <space> :nohlsearch<cr>
nmap es :e ~/.vim/snippets/

"------------------Auto-Commands-------------------------"
"Automatically source the Vimrc file on save"
augroup autosourcing
 	autocmd!
 	autocmd BufWritePost .vimrc source %
augroup END


"sort PHP use statements
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>


