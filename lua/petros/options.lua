-- ===========================================================================
-- General Neovim Options
-- ===========================================================================
vim.opt.number = true -- Show line number
vim.opt.relativenumber = true -- Show relative line numbers for navigation

-- ===========================================================================
-- Visuals and Appearance
-- ===========================================================================
vim.opt.colorcolumn = "100" -- Show a vertical line at 100 characters

-- ===========================================================================
-- Highlight on Yank (Copy)
-- ===========================================================================
-- The highlight group "Visual" is used for yank. This will make the copied text
-- flash to give a visual feedback.
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("yank_highlight", {}),
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({
      higroup = "Visual",
      timeout = 500,
    })
  end,
})

-- ===========================================================================
-- Other useful settings (recommended)
-- ===========================================================================
vim.opt.wrap = false -- Disable line wrapping
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 2 -- Set indent size to 2 spaces
vim.opt.tabstop = 2 -- Set tab character to 2 spaces
vim.opt.smartindent = true -- Enable smart auto-indenting
vim.opt.scrolloff = 8 -- Keep 8 lines above/below cursor when scrolling
vim.opt.hlsearch = true -- Highlight all search matches

vim.opt.clipboard = "unnamedplus"
