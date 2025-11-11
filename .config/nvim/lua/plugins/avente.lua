return {
  "yetone/avante.nvim",
  build = vim.fn.has("win32") ~= 0 and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
    or "make",
  event = "VeryLazy",
  version = false,

  opts = {
    instructions_file = "avante.md",

    provider = "ollama",
    providers = {
      ollama = {
        endpoint = "http://192.168.0.181:11434",
        model = "gpt-oss:20b",

        -- Avoid early require; do a simple check instead:
        is_env_set = function()
          local ok, res = pcall(function()
            return vim.fn.systemlist("curl -sSf " .. vim.fn.shellescape("http://192.169.0.181:11434/api/tags")) -- basic health probe
          end)
          return ok and type(res) == "table" and #res > 0
        end,

        -- If you need request-body options, use extra_request_body per migration guide:
        -- extra_request_body = { options = { num_ctx = 8192 } },
      },
    },
  },

  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-mini/mini.pick",
    "nvim-telescope/telescope.nvim",
    "hrsh7th/nvim-cmp",
    "ibhagwan/fzf-lua",
    "stevearc/dressing.nvim",
    "folke/snacks.nvim",
    "nvim-tree/nvim-web-devicons",
    "zbirenbaum/copilot.lua",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = { insert_mode = true },
          use_absolute_path = true,
        },
      },
    },
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = { file_types = { "markdown", "Avante" } },
      ft = { "markdown", "Avante" },
    },
  },
}
