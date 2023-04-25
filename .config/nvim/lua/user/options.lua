local options = {
    -- Creates a backup file
    backup = false,

    -- Allows neovim to access the system clipboard
    clipboard = "unnamedplus",

    -- More space in the neovim command line for displaying messages
    cmdheight = 2,

    -- Mostly just for cmp
    completeopt = { "menuone", "noselect" },

    -- So that `` is visible in markdown file
    conceallevel = 0,

    -- The encoding written to a file
    fileencoding = "utf-8",

    -- Highlight all matches on previous search pattern
    hlsearch = true,

    -- Ignore case in search patterns
    ignorecase = true,

    -- Allow the mouse to be used in neovim
    mouse = "a",

    -- Pop up menu height
    pumheight = 10,

    -- Show editor moved like `-- INSERT --`
    showmode = false,

    -- Always show tabs
    showtabline = 2,

    -- Smart case
    smartcase = true,

    -- Make indenting smarter again
    smartindent = true,

    -- Force all horizontal splits to go below current window
    splitbelow = true,

    -- Force all vertical splits to go to the right of current window
    splitright = true,

    -- Swap file creation
    swapfile = false,

    -- Time to wait for a mapped sequence to complete (in milliseconds)
    timeoutlen = 300,

    -- Enable persistent undo
    undofile = true,

    -- Faster completion (4000ms default)
    updatetime = 300,

    -- If a file is being edited by another program (or was written to file while
    -- editing with another program), it is not allowed to be edited
    writebackup = false,

    -- Convert tabs to spaces
    expandtab = true,

    -- The number of spaces inserted for each indentation
    shiftwidth = 2,

    -- Insert 2 spaces for a tab
    tabstop = 2,

    -- Highlight the current line
    cursorline = true,

    -- Set numbered lines
    number = true,

    -- Set relative numbered lines
    relativenumber = false,

    -- Set number column width to 4
    numberwidth = 4,

    -- Always show the sign column, otherwise it would shift the text each time
    signcolumn = "yes",

    -- Display lines as one long line
    wrap = true,

    -- Companion to wrap, don't split words
    linebreak = true,

    -- Minimal number of screen lines to keep above and below the cursor
    scrolloff = 8,

    -- Minimal number of screen columns either side of cursor if wrap is `false`
    sidescrolloff = 8,

    -- The font used in graphical neovim applications
    guifont = "monospace:h17",

    -- Which "horizontal" keys are allowed to travel to prev/next line
    whichwrap = "bs<>[]hl",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- Flags to shorten vim messages, see :help 'shortmess'
-- vim.opt.shotmess = "ilmnrx"

-- Don't give |ins-completion-menu| messages
vim.opt.shortmess:append "c"

-- Hyphenated words recognized by searches
vim.opt.iskeyword:append "-"

-- Don't insert the current comment leader automatically for auto-wrapping
-- comments using 'textwidth', hitting <Enter> in insert mode, or hitting
-- 'o' or 'O' in normal mode.
vim.opt.formatoptions:remove({ "c", "r", "o" })

-- Separate vim plugins from neovim in case vim still in use
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")
