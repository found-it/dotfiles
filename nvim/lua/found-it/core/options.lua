local opt = vim.opt
local api = vim.api
local cmd = vim.cmd

opt.relativenumber = true
opt.number = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.wrap = true
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true

-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- Remove all whitespace on save
api.nvim_command([[autocmd BufWritePre * %s/\s\+$//e]])

-- Set spacing to 2 for specific file types
api.nvim_command([[autocmd FileType md setlocal ts=2 sw=2 sts=2 et ai colorscheme=sonokai]])
api.nvim_command([[autocmd BufEnter *.md silent! colorscheme sonokai]])

-- api.nvim_command([[autocmd FileType go colorscheme sonokai]])
api.nvim_command([[autocmd FileType lua  setlocal ts=2 sw=2 sts=2 et ai]])
api.nvim_command([[autocmd FileType js   setlocal ts=2 sw=2 sts=2 et ai]])
api.nvim_command([[autocmd FileType tf   setlocal ts=2 sw=2 sts=2 et ai]])
api.nvim_command([[autocmd FileType hcl  setlocal ts=2 sw=2 sts=2 et ai]])
api.nvim_command([[autocmd FileType tf  setlocal ts=2 sw=2 sts=2 et ai]])
api.nvim_command([[autocmd FileType json setlocal ts=2 sw=2 sts=2 et ai]])
api.nvim_command([[autocmd FileType sh   setlocal ts=2 sw=2 sts=2 et ai]])

-- Use tabs in Makefiles
api.nvim_command([[autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0]])

-- Highlight on yank
cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

