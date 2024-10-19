vim.wo.number = true
vim.wo.relativenumber = true

vim.g.did_load_filetypes = 1
vim.g.formatoptions = "qrn1"
vim.opt.showmode = false
vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.wo.linebreak = true
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.shell = "/bin/zsh"

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Shorter messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true

-- Fillchars
vim.opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}

vim.opt.encoding = 'utf-8'       -- Устанавливает кодировку для внутренних данных Neovim
vim.opt.fileencoding = 'utf-8'   -- Устанавливает кодировку для открываемых файлов
vim.opt.fileencodings = { 'utf-8' } -- Задает список предполагаемых кодировок при открытии файлов:

vim.opt.swapfile = false


-- Автоматическое отключение пдосветки поиска поиска
vim.api.nvim_create_augroup('clear_search_highlight', {})
vim.api.nvim_create_autocmd('CmdlineEnter', {
  group = 'clear_search_highlight',
  pattern = { '/', '?' },
  command = 'set hlsearch',
})
vim.api.nvim_create_autocmd('CmdlineLeave', {
  group = 'clear_search_highlight',
  pattern = { '/', '?' },
  command = 'set nohlsearch',
})
