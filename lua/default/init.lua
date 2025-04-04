local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("default.remap")
require("default.lazy")
require("default.set")
require("default.macros")

-- custom filetypes
vim.cmd([[
    autocmd BufEnter *.ers  setlocal filetype=rustscript
]])
