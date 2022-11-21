local opt = vim.opt
vim.cmd('autocmd!')

-- coding type
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

-- line numbers
vim.wo.number = true

opt.title = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- backspace
opt.backspace = { 'start', 'eol', 'indent' }

-- others
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 2
opt.scrolloff = 10
--opt.shell = 'ohmyzsh'
opt.backupskip = { '/tmp/*', '/private/tmp/*' }
opt.inccommand = 'split'

-- Finding files - Search down into subfolders
opt.path:append { '**' }

opt.wildignore:append { '*/node_modules/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = '*',
    command = "set nopaste"
})

-- Add asterisks in block comments
opt.formatoptions:append { 'r' }
