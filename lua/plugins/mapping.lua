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
          ["<Leader>k"] = { desc = " Language tools" },

          ["<Leader>j"] = { desc = "󰧑 CodeCompanion AI" },
          ["<Leader>jj"] = { "<cmd>CodeCompanion<cr>", desc = "CodeCompanion inline assistant" },
          ["<Leader>ja"] = { "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion actions" },
          ["<Leader>jc"] = { "<cmd>CodeCompanionChat<cr>", desc = "CodeCompanion chat" },
        },
      },
    },
  },
}
