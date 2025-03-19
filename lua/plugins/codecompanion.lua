return {
  "olimorris/codecompanion.nvim",
  config = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  init = function()
    require("codecompanion").setup {
      adapters = {
        openai = function()
          return require("codecompanion.adapters").extend("openai", {
            schema = {
              model = {
                default = "gpt-4o-mini",
              },
            },
          })
        end,
        deepseek = function()
          return require("codecompanion.adapters").extend("deepseek", {
            schema = {
              model = {
                default = "deepseek-reasoner",
              },
            },
          })
        end,
        deepseekchat = function()
          return require("codecompanion.adapters").extend("deepseek", {
            schema = {
              model = {
                default = "deepseek-chat",
              },
            },
          })
        end,

        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            schema = {
              model = {
                default = "gemma3:latest",
              },
            },
            env = {
              url = "http://localhost:11434",
            },
            headers = {
              ["Content-Type"] = "application/json",
            },
            parameters = {
              sync = true,
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "deepseek",
        },
        inline = {
          adapter = "openai",
        },
      },
    }
  end,
}
