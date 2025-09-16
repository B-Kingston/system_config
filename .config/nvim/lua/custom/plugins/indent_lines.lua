return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    scope = {
      show_start = false, -- Disables the underline at function start
      show_end = false, -- Disables the underline at function end
      enabled = true, -- Completely disables scope highlighting
    },
    indent = {
      char = '│', -- You can keep your preferred indent character
    },
  },
}
