return {
  "luozhiya/fittencode.nvim",
  opts = {
    use_default_keymaps = true,
    -- Default keymaps
    keymaps = {
      inline = {
        ["<A-i>"] = "accept_all_suggestions",
        ["<A-w>"] = "accept_word",
        ["<A-l>"] = "accept_line",
        ["<C-l>"] = "revoke_line",
        ["<C-w>"] = "revoke_word",
        ["<C-d>"] = "triggering_completion",
      },
      chat = {
        ["q"] = "close",
        ["[c"] = "goto_previous_conversation",
        ["]c"] = "goto_next_conversation",
        ["c"] = "copy_conversation",
        ["C"] = "copy_all_conversations",
        ["d"] = "delete_conversation",
        ["D"] = "delete_all_conversations",
      },
    },
  },
}
