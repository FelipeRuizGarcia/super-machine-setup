syntax enable

" neoformat "
let g:neoformat_run_all_formatters = 1

" prettier"
nmap <Leader>py <Plug>(Prettier)
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" treesitter"
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" Disable folding at startup."
set nofoldenable 

" whitespaces endlines
set listchars=space:·,tab:->\

" VIM Identation
filetype plugin indent on
"show existing tab with 4 spaces width"

set tabstop=4
" when indenting with '>', use 4 spaces width"

set shiftwidth=4
" On pressing tab, insert 4 spaces"

set expandtab
set mouse=a
set showcmd
set showmatch
set number
set relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

" coc sql"
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" BLACK"
" let g:black_linelength=79"
" autocmd BufWritePre *.py execute ':Black'
" ZZ does not work"
" nnoremap ZZ :Black exit <CR>"
" To run Black on a key press (e.g. F9 below), add this:
" nnoremap <F9> :Black<CR>
"""""""""""""""""

highlight OverLength ctermbg=red ctermfg=white guibg=#592929

" coc snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackSpace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" VIM-AIRLINE

" enable/disable coc integration >
let g:airline#extensions#coc#enabled = 1

" change error symbol: >
let airline#extensions#coc#error_symbol = 'E:'

" change warning symbol: >
let airline#extensions#coc#warning_symbol = 'W:'

" change the error format (%C - error count, %L - line number): >
let airline#extensions#coc#stl_format_err = '%C(L%L)'

" change the warning format (%C - error count, %L - line number): >
let airline#extensions#coc#stl_format_warn = '%C(L%L)'

" BEGIN
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-nvim-lsp-signature-help'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" For luasnip users.
 Plug 'L3MON4D3/LuaSnip'
 Plug 'saadparwaiz1/cmp_luasnip'

 Plug 'SirVer/ultisnips'
 Plug 'quangnguyen30192/cmp-nvim-ultisnips'

 Plug 'dcampos/nvim-snippy'
 Plug 'dcampos/cmp-snippy'

 " nio
 Plug 'nvim-neotest/nvim-nio'

" THEME
Plug 'folke/tokyonight.nvim'

" neoformat
Plug 'sbdchd/neoformat'

" JSX
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" TS
Plug 'leafgarland/typescript-vim'

" LSP Manson Install
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" nvim-lint
Plug 'mfussenegger/nvim-lint'

" DAP
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'

" DAP for Nvim
Plug 'jbyuki/one-small-step-for-vimkind'

" Vim Script
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

" plenary.nvim
Plug 'nvim-lua/plenary.nvim'

" Formatter.nvim
" EXPERIMENTAL / NEEDS CONFIG FORMATTERS AND NEOFORMAT DOES
" https://github.com/mhartington/formatter.nvim/issues/97
" Plug 'mhartington/formatter.nvim'

" COC with SLP
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

" prettier.nvim
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'nvim-treesitter/nvim-treesitter-context'

" telescope
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvimtools/none-ls.nvim'
Plug 'nvimtools/none-ls-extras.nvim'

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

" https://github.com/ults-io/vscode-react-javascript-snippets
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'

" Plug 'nlknguyen/cloudformation-syntax.vim'

" Python Black"
" Plug 'psf/black', { 'branch': 'stable' }
" Plug 'psf/black', { 'tag': '*.*.*' }

" Test Python Black"
" Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}

Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }

call plug#end()

" LUA CONFIGS"
lua <<EOF

require("nvim-treesitter.install").prefer_git = true
require"nvim-treesitter.configs".setup{

-- textobjects

  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        -- You can optionally set descriptions to the mappings (used in the desc parameter of
        -- nvim_buf_set_keymap) which plugins like which-key display
        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
        -- You can also use captures from other query groups like `locals.scm`
        ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
      },
      -- You can choose the select mode (default is charwise 'v')
      --
      -- Can also be a function which gets passed a table with the keys
      -- * query_string: eg '@function.inner'
      -- * method: eg 'v' or 'o'
      -- and should return the mode ('v', 'V', or '<c-v>') or a table
      -- mapping query_strings to modes.
      selection_modes = {
        ['@parameter.outer'] = 'v', -- charwise
        ['@function.outer'] = 'V', -- linewise
        ['@class.outer'] = '<c-v>', -- blockwise
      },
      -- If you set this to `true` (default is `false`) then any textobject is
      -- extended to include preceding or succeeding whitespace. Succeeding
      -- whitespace has priority in order to act similarly to eg the built-in
      -- `ap`.
      --
      -- Can also be a function which gets passed a table with the keys
      -- * query_string: eg '@function.inner'
      -- * selection_mode: eg 'v'
      -- and should return true of false
      include_surrounding_whitespace = true,
    },
     move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]]"] = { query = "@class.outer", desc = "Next class start" },
        --
        -- You can use regex matching (i.e. lua pattern) and/or pass a list in a "query" key to group multiple queires.
        ["]o"] = "@loop.*",
        -- ["]o"] = { query = { "@loop.inner", "@loop.outer" } }
        --
        -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
        -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
        ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
        ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
      -- Below will go to either the start or the end, whichever is closer.
      -- Use if you want more granular movements
      -- Make it even more gradual by adding multiple queries and regex.
      goto_next = {
        ["]d"] = "@conditional.outer",
      },
      goto_previous = {
        ["[d"] = "@conditional.outer",
      }
    },
    lsp_interop = {
      enable = true,
      border = 'none',
      floating_preview_opts = {},
      peek_definition_code = {
        ["<leader>df"] = "@function.outer",
        ["<leader>dF"] = "@class.outer",
      },
    },
  },

  ignore_install = {
    "tree-sitter-wing",
    "tree-sitter-haskell",
    "tree-sitter-angular",
    "tree-sitter-beancount",
    "tree-sitter-liquidsoap",
    "tree-sitter-purescript",
    "tree-sitter-groovy",
    "tree-sitter-haskell",
    "tree-sitter-gnuplot",
    "tree-sitter-scala",
    "tree-sitter-php_only",
    "tree-sitter-phpdoc",
    "tree-sitter-php",
    "klotin",
    "tree-sitter-kotlin",
    "tlaplus",
    "gomod",
    "tree-sitter-zathurarc",
    "tree-sitter-bitbake",
    "tree-sitter-groovy",
    "tree-sitter-haskell",
    "tree-sitter-kconfig",
    "tree-sitter-luadoc",
    "tree-sitter-starlark",
    },

  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = "all",

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight={enable=true},

  indent = {
    enable = true
  },

  incremental_selection = {
  enable = true,
keymaps = {
init_selection = "gnn", -- set to `false` to disable one of the mappings
node_incremental = "grn",
scope_incremental = "grc",
node_decremental = "grm",
},
},

  refactor = {

          navigation = {
      enable = true,
      -- Assign keymaps to false to disable them, e.g. `goto_definition = false`.
      keymaps = {
        goto_definition = "gnd",
        list_definitions = "gnD",
        list_definitions_toc = "gO",
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-#>",
      },
      },
          smart_rename = {
      enable = true,
      -- Assign keymaps to false to disable them, e.g. `smart_rename = false`.
      keymaps = {
        smart_rename = "grr",
      },
    },
    highlight_current_scope = { enable = true },
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
    },
  }
}

-- makes sure the language servers configured later with lspconfig are
-- actually available, and install them automatically if they're not
-- !! THIS MUST BE CALLED BEFORE ANY LANGUAGE SERVER CONFIGURATION
require("mason").setup()
require("mason-lspconfig").setup {
  -- automatically install language servers setup below for lspconfig
  automatic_installation = true
}

-- Actually setup the language servers so that they're available for our
-- LSP client. I'm mainly working with Ruby and JS, so I'm configuring
-- language servers for these 2 languages
local nvim_lsp = require('lspconfig')
nvim_lsp.tsserver.setup{}


-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fl', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})

-- tabnine
require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap = '<leader>t',
  dismiss_keymap = '<leader>n',
  debounce_ms = 800,
  suggestion_color = {gui = "#908080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt", "NvimTree"},
  log_file_path = nil, -- absolute path to Tabnine log file
})

  -- Error executing vim.schedule lua callback: ...im-treesitter-context/lua/treesitter-context/context.lua:157: 'start' is higher than 'end'
  --  nvim-treesitter-context 
  require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
  }

-- none-ls
local null_ls = require("null-ls")

null_ls.setup({
    debug = true,
    sources = {
        require("none-ls.diagnostics.cpplint"),
        require("none-ls.formatting.jq"),
        require("none-ls.code_actions.eslint"),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
    },
})

-- THEME
vim.cmd[[colorscheme tokyonight-night]]

-- NVIM-CMP

  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<Ctrl>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }

--- DAP
local dap, dapui = require("dap"), require("dapui")
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

dap.configurations.lua = { 
  { 
    type = 'nlua', 
    request = 'attach',
    name = "Attach to running Neovim instance",
  }
}

dap.adapters.nlua = function(callback, config)
  callback({ type = 'server', host = config.host or "127.0.0.1", port = config.port or 8086 })
end


vim.api.nvim_set_keymap('n', '<F8>', [[:lua require"dap".toggle_breakpoint()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F9>', [[:lua require"dap".continue()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F10>', [[:lua require"dap".step_over()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<S-F10>', [[:lua require"dap".step_into()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F12>', [[:lua require"dap.ui.widgets".hover()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F5>', [[:lua require"osv".launch({port = 8086})<CR>]], { noremap = true })

--- nvim lint with biome
-- biome
require('lspconfig').biome.setup{
filetypes =  { "javascript", "javascriptreact", "json", "jsonc", "typescript", "typescript.tsx", "typescriptreact", "astro", "svelte", "vue" }}

--- https://github.com/mfussenegger/nvim-lint?tab=readme-ov-file#available-linters
require('lint').linters_by_ft = {
  biomejs = {'vale',}
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
---

EOF
