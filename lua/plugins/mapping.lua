return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>kj"] = { "<cmd>TSToolsAddMissingImports<cr>", desc = "Typescript import missing" },
          ["<Leader>ku"] = { "<cmd>TSToolsRemoveUnusedImports<cr>", desc = "Typescript remove unused import" },
          ["<Leader>kf"] = { "<cmd>TSToolsFixAll<cr>", desc = "Typscript fix all" },
          ["<Leader>kk"] = { "<cmd>RustLsp codeAction<cr>", desc = "Rust code action" },
          ["<Leader>km"] = { "<cmd>RustLsp relatedDiagnostics<cr>", desc = "Rust diagnostics" },
          ["<Leader>kc"] = { "<cmd>RustLsp openCargo<cr>", desc = "Rust open cargo file" },
          ["<Leader>ki"] = { "<cmd>RustLsp hover actions<cr>", desc = "Rust hover actions" },
          ["<Leader>k"] = { desc = " Rust&Typescript tools" },

          ["<Leader>a"] = { desc = "󰧑 Codecompanion AI" },
          ["<Leader>ai"] = { "<cmd>CodeCompanion<cr>", desc = "Codecompanion inline assistant" },
          ["<Leader>ac"] = { "<cmd>CodeCompanionActions<cr>", desc = "Codecompanion actions" },
          ["<Leader>aa"] = { "<cmd>CodeCompanionChat<cr>", desc = "Codecompanion chat" },

          -- ["<Leader><Leader>"] = { "<cmd>Telescope find_files<cr>" },

          -- ["<Leader>s"] = { desc = " Search" },
          -- ["<Leader>ss"] = { function() require("flash").jump() end, desc = "Flash" },
          -- ["<Leader>sd"] = { function() require("flash").treesitter_search() end, desc = "Flash treesitter search" },
          -- ["<Leader>sw"] = { "/", desc = "Search current document" },
          -- ["<Leader>sS"] = { "<cmd>lua require('spectre').toggle()<CR>", desc = "Search and replace global (rg)" },
          --
          -- ["<Leader>ui"] = { function() require("dbee").toggle() end, desc = " Toggle database ui" },
          ["<Leader>fh"] = { "<cmd>Telescope frecency<cr>", desc = "Find history files" },
        },
      },
    },
  },
}
