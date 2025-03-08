return {
  "olimorris/codecompanion.nvim",
  config = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  init = function()
    require("codecompanion").setup {
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
