-- set vim options here (vim.<first_key>.<second_key> = value)
-- return {
--   opt = {
--     -- set to true or false etc.
--     relativenumber = true, -- sets vim.opt.relativenumber
--     number = true,         -- sets vim.opt.number
--     spell = false,         -- sets vim.opt.spell
--     signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
--     wrap = false,          -- sets vim.opt.wrap
--     tw = 79,
--     cc = '80',
--   },
--   g = {
--     mapleader = " ",                 -- sets vim.g.mapleader
--     autoformat_enabled = true,       -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
--     cmp_enabled = true,              -- enable completion at start
--     autopairs_enabled = true,        -- enable autopairs at start
--     diagnostics_mode = 3,            -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
--     icons_enabled = true,            -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
--     ui_notifications_enabled = true, -- disable notifications when toggling UI elements
--   },
-- }
--


-- If you need more control, you can use the function()...end notation
return function(local_vim)
  local_vim.opt.relativenumber = true
  local_vim.opt.number = true
  local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
  local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
  local_vim.opt.cc = '80,120'

  local_vim.g.autopairs_enabled = true
  local_vim.g.autoformat_enabled = true
  local_vim.g.diagnostics_mode = 3
  local_vim.g.icons_enabled = true
  local_vim.g.ui_notifications_enabled = true
  local_vim.g.mapleader = " "
  local_vim.g.copilot_no_tab_map = true
  local_vim.g.copilot_assume_mapped = true
  local_vim.g.copilot_tab_fallback = ""

  local_vim.g.tex_flavor = "latex"
  vim.g.tex_flavor = "latex"
  vim.g.vimtex_view_sync = 1
  vim.g.vimtex_view_skim_activate = 1
  -- open with skim
  vim.g.vimtex_view_method = 'skim'
  -- add shell escape to latexmk
  vim.g.vimtex_compiler_latexmk = {
    build_dir = "build",
    options = {
      '-xelatex',
      '-shell-escape',
      '-interaction=nonstopmode',
      '-synctex=1',
      '-file-line-error',
      '-shell-escape',
    },
    callback = 1,
    continuous = 1,
    executable = 'latexmk',
    hooks = {},
  }
  return local_vim
end
