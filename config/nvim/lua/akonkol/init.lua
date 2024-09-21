require("akonkol.remap")
vim.wo.number = true         -- set number
vim.g.loaded_netrw = 1       -- disable netrw at the very start of your init.lua
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.undodir = {"~/.vim/undodir"}
vim.api.nvim_command('set cmdheight=0')

vim.api.nvim_create_autocmd("FileType", {
  pattern = "py",
  command = "tabstop=4 shiftwidth=4 softtabstop=4 expandtab"
})

require("nvim-tree").setup({
  view = {
    signcolumn = "no",
  },
  renderer = {
	  symlink_destination = false,
    icons = {
      show = {
	file = false,
	folder = false,
	folder_arrow = false,
	git = false
      }
    },
  indent_markers = {
          enable = true,
          inline_arrows = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
  },
})
require('lualine').setup()

vim.cmd("colorscheme kanagawa-dragon")
