return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      on_highlights = function(hl, c)
        -- Make statusline more prominent
        hl.StatusLine = {
          bg = c.blue,      -- Bright blue background
          fg = c.bg_dark,   -- Dark text for contrast
          bold = true,
        }
        hl.StatusLineNC = {
          bg = c.blue0,     -- Dimmer blue for inactive windows
          fg = c.fg_dark,
        }
        -- Style split borders
        hl.VertSplit = {
          fg = c.blue0,     -- Muted border color
        }
        hl.WinSeparator = {
          fg = c.blue0,     -- Muted border color (neovim 0.8+)
        }
      end,
    },
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight-night]])

      -- Ensure split borders are visible after colorscheme loads (muted blue)
      vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#3d59a1' })
      vim.api.nvim_set_hl(0, 'VertSplit', { fg = '#3d59a1' })
      vim.api.nvim_set_hl(0, 'WinBar', { fg = '#3d59a1', bg = '#16161e' })
      vim.api.nvim_set_hl(0, 'WinBarNC', { fg = '#3d59a1', bg = '#16161e' })
    end,
  }
}
