local set = vim.opt

vim.cmd("language en_US.UTF-8")
vim.cmd("filetype plugin indent on")
vim.g.mapleader = ","

-- 2 moving around, searching and patterns
set.autochdir = true
set.ignorecase = true
set.incsearch = true
set.smartcase = true

-- 4 display text
set.cmdheight = 1
set.list = true
set.listchars="tab:> ,multispace:·,leadmultispace:·,trail:·,extends:>,precedes:<"
set.numberwidth = 4
set.number = true
set.relativenumber = true
set.scrolloff = 4
set.sidescroll = 1
set.sidescrolloff = 4
set.wrap = false
set.fillchars = { eob = "~" }

--5 syntax, highlighting and spelling.
set.cursorline = true
set.cursorlineopt = "both"
set.hlsearch = true
set.termguicolors = true

--6 multiple windows
set.hidden = true
set.laststatus = 3
set.splitbelow = true
set.splitright = true
set.winheight = 10
set.winwidth = 10

--7 multiple tab pages
set.showtabline = 0

--9 using the mouse
set.mouse = "a"

--10 messages and info
set.confirm = true
set.ruler = false
set.showcmd = false
set.showmode = false
set.shortmess:append("c")

--12 editing text
set.completeopt = { "menuone", "noselect" }
set.pumheight = 10
set.showmatch = true
set.textwidth = 120
set.undofile = true

--13 tabs and indenting
set.expandtab = true
set.shiftwidth = 4
set.shiftround = true
set.smartindent = true
set.softtabstop = 4
set.tabstop = 4

--17 reading and writing files
set.autowrite = true
set.autowriteall = true
set.backup = false
set.writebackup = true

--18 the swap file
set.updatetime = 1000

--19 command line editing
set.history = 50

--22 language specific
set.iskeyword:append("-")

--23 multi-byte characters
set.fileencoding = "utf-8"

-- 24 various
set.signcolumn = "yes"
