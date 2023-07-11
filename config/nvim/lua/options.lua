vim.opt.clipboard = "unnamedplus"
vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
     ["+"] = 'clip.exe',
     ["*"] = 'clip.exe',
   },
  paste = {
     ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
     ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled = false,
}
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 2
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 5
