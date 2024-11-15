-- prepare the lazy.nvim installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- setting up lazy.nvim and import plugins directory
require("lazy").setup({ { import = "plugins" }, { import = "plugins.lsp" }}, {
  -- check updates without notify
    checker = {
    enabled = true,
    notify = false,
    },
  -- theme
  install = { colorscheme = { "tokyonight" } },
  -- disable boot notification
  change_detection = {
    notify = false,
  },
})