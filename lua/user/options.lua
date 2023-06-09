-- :help options

local options = {

    autochdir = true,                        -- Automatically cd to directory of open file
    autoread = true,                         -- Automatically reload changed file
    autowrite = true,                        -- Enable auto write
    backup = true,                           -- creates a backup file
    clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
    cmdheight = 2,                           -- more space in the neovim command line for displaying messages
    -- completeopt = { "menuone", "noselect", "preview" }, -- mostly just for cmp
    completeopt = { "longest", "menuone", "preview" }, -- mostly just for cmp
    conceallevel = 0,                        -- so that `` is visible in markdown files
    cursorline = true,                       -- highlight the current line
    expandtab = true,                        -- convert tabs to spaces
    fileencoding = "utf-8",                  -- the encoding written to a file
    guifont = "monospace:h17",               -- the font used in graphical neovim applications
    hlsearch = true,                         -- highlight all matches on previous search pattern
    ignorecase = true,                       -- ignore case in search patterns
    mouse = "a",                             -- allow the mouse to be used in neovim
    number = true,                           -- set numbered lines
    numberwidth = 4,                         -- set number column width to 2 {default 4}
    pumheight = 10,                          -- pop up menu height
    relativenumber = true,                   -- set relative numbered lines
    scrolloff = 3,                           -- is one of my fav
    shiftwidth = 4,                          -- the number of spaces inserted for each indentation
    showmatch = true,                        -- Show matching brackets when text indicator is over them  [{()}]
    showmode = true,                         -- we don't need to see things like -- INSERT -- anymore
    showtabline = 2,                         -- always show tabs
    sidescrolloff = 3,
    signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
    smartcase = true,                        -- smart case
    smartindent = true,                      -- make indenting smarter again
    splitbelow = true,                       -- force all horizontal splits to go below current window
    splitright = true,                       -- force all vertical splits to go to the right of current window
    swapfile = true,                         -- creates a swapfile
    tabstop = 4,                             -- insert 4 spaces for a tab
    termguicolors = true,                    -- set term gui colors (most terminals support this)
    timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true,                         -- enable persistent undo
    undolevels = 10000,
    updatetime = 300,                        -- faster completion (4000ms default)
    virtualedit = "block",
    wrap = true,                             -- display lines as one long line
    writebackup = true,                      -- if a file is being edited by another program (or was written to file
                                             -- while editing with another program), it is not allowed to be edited

    sessionoptions = "buffers,curdir,folds,globals,help,options,localoptions,resize,tabpages,terminal,winpos,winsize",

}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.opt.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
-- vim.cmd [[set formatoptions-=ro]] -- TODO: this doesn't seem to work

