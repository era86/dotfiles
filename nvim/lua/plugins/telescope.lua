return {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-live-grep-args.nvim', version = '^1.0.0' },
  },
  config = function()
    local telescope = require('telescope')

    telescope.setup({})

    -- Enable live_grep_args extension for passing rg flags inline
    -- Usage: "search term" --iglob **/path/** or "search term" -t ruby
    telescope.load_extension('live_grep_args')
  end,
}
