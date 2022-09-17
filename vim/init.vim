syntax enable

set number
set mouse=a

set showcmd
set showmatch
set relativenumber

" Black Configs

augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end

" To run Black on a key press (e.g. F9 below), add this:
nnoremap <F9> :Black<CR>


" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

" nvim-lint
Plug 'mfussenegger/nvim-lint'

" DAP
Plug 'mfussenegger/nvim-dap'

" Vim Script
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

" plenary.nvim
Plug 'nvim-lua/plenary.nvim'

" Formatter.nvim
Plug 'mhartington/formatter.nvim'

" LSP Manson Install
Plug 'williamboman/mason.nvim'

" COC with SLP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Neoformat
Plug 'sbdchd/neoformat'

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" prettier.nvim
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'MunifTanjim/prettier.nvim'

Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

"   git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
Plug 'pangloss/vim-javascript'

" Make sure you use single quotes
Plug 'hashivim/vim-terraform'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'


Plug 'vim-airline/vim-airline'

Plug 'nlknguyen/cloudformation-syntax.vim'

Plug 'psf/black', { 'branch': 'stable' }

call plug#end()
