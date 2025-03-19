return {
  "mlaursen/vim-react-snippets",
  init = function()
    vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
    require("vim-react-snippets").lazy_load()
  end,
}
