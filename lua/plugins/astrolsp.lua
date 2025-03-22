return {
  "AstroNvim/astrolsp",
  -- we need to use the function notation to get access to the `lspconfig` module
  ---@param opts AstroLSPOpts
  opts = function(plugin, opts)
    -- insert "prolog_lsp" into our list of servers
    opts.servers = opts.servers or {}
    table.insert(opts.servers, "prisma_lsp")

    -- extend our configuration table to have our new prolog server
    opts.config = require("astrocore").extend_tbl(opts.config or {}, {
      -- this must be a function to get access to the `lspconfig` module
      gopls = {
        settings = {
          gopls = {
            hints = {
              assignVariableTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = true,
              constantValues = true,
              functionTypeParameters = true,
              parameterNames = true,
              rangeVariableTypes = true,
            },
          },
        },
      },
      lua_ls = {
        settings = {
          Lua = {
            hint = {
              enable = true,
            },
          },
        },
      },
      prisma_lsp = {
        -- the command for starting the server
        cmd = {
          "prisma-language-server",
          "--stdio",
        },
        -- the filetypes to attach the server to
        filetypes = { "prisma" },
        settings = {
          prisma = {
            prismaFmtBinPath = "",
          },
        },
        -- root directory detection for detecting the project root
        root_dir = require("lspconfig.util").root_pattern(".git", "package.json"),
      },
    })
  end,
}
