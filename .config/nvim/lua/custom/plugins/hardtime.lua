-- lazy.nvim
return {
  'm4xshen/hardtime.nvim',
  dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
  opts = {
    max_count = 24, -- Maximum number of repeated key presses
    max_time = 1000, -- Time window for counting repeated key presses (in milliseconds)
    restricted_keys = {
      ['j'] = { 'n', 'x' }, -- Restrict 'j' in Normal and Visual modes
      ['k'] = { 'n', 'x' }, -- Restrict 'k' in Normal and Visual modes
    },
    disabled_keys = {
      ['<Up>'] = { 'n', 'x', 'v' }, -- Disable Up arrow in Normal, Visual modes
      ['<Down>'] = { 'n', 'x', 'v' }, -- Disable Down arrow in Normal, Visual modes
      ['<Left>'] = { 'n', 'x', 'v' }, -- Disable Left arrow in Normal, Visual modes
      ['<Right>'] = { 'n', 'x', 'v' }, -- Disable Right arrow in Normal, Visual modes
    },
  },
}
