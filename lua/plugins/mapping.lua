return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>kj"] = { "<cmd>TSToolsAddMissingImports<cr>", desc = "Fixed all missing import" },
          ["<Leader>ku"] = { "<cmd>TSToolsRemoveUnusedImports<cr>", desc = "Remove unused import" },
          ["<Leader>kf"] = { "<cmd>TSToolsFixAll<cr>", desc = "Fixed all fixable errors" },
          ["<Leader>kk"] = { "<cmd>RustLsp codeAction<cr>", desc = "Rust code action" },
          ["<Leader>km"] = { "<cmd>RustLsp relatedDiagnostics<cr>", desc = "Rust diagnostics" },
          ["<Leader>kc"] = { "<cmd>RustLsp openCargo<cr>", desc = "Rust open cargo file" },
          ["<Leader>ki"] = { "<cmd>RustLsp hover actions<cr>", desc = "Rust hover actions" },
          ["<Leader>k"] = { desc = "Language tools" },
        },
      },
    },
  },
}
