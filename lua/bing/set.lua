vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.opt.wildignore:append { '*/node_modules/*' }

-- allow to paste with 'p' what you have copied to keyboard
vim.opt.clipboard:append { 'unnamedplus' }

-- stop automatic newline continuation of comments
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- remap F1 to do nothing. Keep accidently hitting it
vim.cmd("nnoremap <F1> <Nop>")
vim.cmd("inoremap <F1> <Nop>")


vim.cmd("nnoremap <leader>1 1gt")
vim.cmd("nnoremap <leader>2 2gt")
vim.cmd("nnoremap <leader>3 3gt")
vim.cmd("nnoremap <leader>4 4gt")
vim.cmd("nnoremap H :tabprevious<CR>")
vim.cmd("nnoremap L :tabnext<CR>")

-- exit terminal editing mode to get to vim normal mode
vim.cmd("tnoremap  <Esc> <C-\\><C-n>")
-- open terminal in new tab
vim.keymap.set('n', '~', '<Cmd>tabnew | term<CR>')
-- close terminal when in terminal mode and close the buffer
vim.keymap.set('t', '~', '<Cmd>bd!<CR>')
