local opt = vim.opt

-- lines number
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- recherche
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- termguicolors
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- back
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard = "unnamedplus" -- on utilise le presse papier du système par défaut

-- splitting
opt.splitright = true
opt.splitbelow = true

-- display specials characters
opt.list = true
opt.listchars:append({ nbsp = "␣", trail = "•", precedes = "«", extends = "»", tab = "> " })

-- miscallaneous
opt.swapfile = false -- remove swap file
opt.undofile = true -- infinite undo
opt.iskeyword:append("-") -- word with "-" treat as unique word