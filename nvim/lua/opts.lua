--[[ opts.lua ]]
local opt = vim.opt
local cmd = vim.api.nvim_command

-- [[ Context ]]
opt.colorcolumn = '90' 		-- Show col for max line length
opt.number = true		-- Show line numbers
opt.relativenumber = true 	-- Show relative line numbers
opt.scrolloff = 4		-- Min num lines of context, keeps 4 lines available below cursor at all times?

-- [[ Filetypes ]]
opt.encoding = 'utf8'		-- String encoding to use	
opt.fileencoding = 'utf8'	-- File encoding to use

-- [[ Theme ]]
opt.syntax = "ON"
opt.termguicolors = true
cmd('colorscheme dracula')

-- [[ Search ]]
opt.ignorecase = true		-- Ignore case when searching
opt.smartcase = true		-- Override ignorecase if search contains upper case
opt.incsearch = true		-- Incremental search, highlight as you type
opt.hlsearch = true		-- Highlighting

-- [[ Whitespace ]]
opt.expandtab = true		-- Use spaces instead of tabs
opt.shiftwidth = 2		-- Size of an indent
opt.softtabstop = 2		-- Number of spaces tabs count for in insert mode
opt.tabstop = 2			-- Number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true
opt.splitbelow=true

