return {
  {
    'echasnovski/mini.nvim',
    config = function()
      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = true }

      local move = require 'mini.move'
      move.setup {
        mappings = {
          left = 'H',
          right = 'L',
          down = 'J',
          up = 'K',

          -- Move current line in Normal mode
          line_left = 'H',
          line_right = 'L',
          line_down = 'J',
          line_up = 'K',
        },
      }
    end,
  },
}
