return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>kk"] = { "<cmd>TSToolsAddMissingImports<cr>", desc = "Fixed all missing import" },
          ["<Leader>ku"] = { "<cmd>TSToolsRemoveUnusedImports<cr>", desc = "Remove unused import" },
          ["<Leader>kf"] = { "<cmd>TSToolsFixAll<cr>", desc = "Fixed all fixable errors" },
          desc = "Typescript tools",
        },
      },
    },
  },
}
