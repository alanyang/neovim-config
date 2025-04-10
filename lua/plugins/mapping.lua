return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          -- ["<Leader>kj"] = { "<cmd>TSToolsAddMissingImports<cr>", desc = "Typescript import missing" },
          -- ["<Leader>ku"] = { "<cmd>TSToolsRemoveUnusedImports<cr>", desc = "Typescript remove unused import" },
          -- ["<Leader>kf"] = { "<cmd>TSToolsFixAll<cr>", desc = "Typscript fix all" },
          ["<Leader>kk"] = { "<cmd>RustLsp codeAction<cr>", desc = "Rust code action" },
          ["<Leader>km"] = { "<cmd>RustLsp relatedDiagnostics<cr>", desc = "Rust diagnostics" },
          ["<Leader>kc"] = { "<cmd>RustLsp openCargo<cr>", desc = "Rust open cargo file" },
          ["<Leader>ki"] = { "<cmd>RustLsp hover actions<cr>", desc = "Rust hover actions" },
          ["<Leader>k"] = { desc = " Language action" },
          ["<Leader>kj"] = {
            function()
              vim.lsp.buf.code_action {
                apply = true,
                context = {
                  only = { "source.addMissingImports.ts" },
                },
              }
              vim.cmd "write"
            end,
            desc = "Import miss",
          },
          ["<Leader>ku"] = {
            function()
              vim.lsp.buf.code_action {
                apply = true,
                context = {
                  only = { "source.removeUnused.ts" },
                },
              }
              vim.cmd "write"
            end,
            desc = "Remove unused import",
          },

          ["<Leader>a"] = { desc = "󰧑 Codecompanion AI" },
          ["<Leader>aa"] = { "<cmd>CodeCompanion<cr>", desc = "Codecompanion inline assistant" },
          ["<Leader>as"] = { "<cmd>CodeCompanionActions<cr>", desc = "Codecompanion actions" },
          ["<Leader>ac"] = { "<cmd>CodeCompanionChat<cr>", desc = "Codecompanion chat" },

          ["<Leader><Leader>"] = { "<cmd>Telescope find_files<cr>", desc = "Explore files" },

          -- ["<Leader>s"] = { desc = " Search" },
          -- ["<Leader>ss"] = { function() require("flash").jump() end, desc = "Flash" },
          -- ["<Leader>sd"] = { function() require("flash").treesitter_search() end, desc = "Flash treesitter search" },
          -- ["<Leader>sw"] = { "/", desc = "Search current document" },
          ["<Leader>fR"] = { "<cmd>lua require('spectre').toggle()<CR>", desc = "Find and replace global (rg)" },
          --
          -- ["<Leader>ui"] = { function() require("dbee").toggle() end, desc = " Toggle database ui" },
          ["<Leader>fh"] = { "<cmd>Telescope frecency<cr>", desc = "Find history files" },
          -- ["<Leader>ff"] = { function() require("fzf-lua").files() end, desc = "Find files" },
          --
        },
      },
    },
  },
}
