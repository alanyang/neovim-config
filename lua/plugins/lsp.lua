return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              hints = {
                assignVariableTypes = true, -- 显示变量类型注解
                compositeLiteralFields = true, -- 显示复合字面量字段名称
                compositeLiteralTypes = true, -- 显示复合字面量类型
                constantValues = true, -- 显示常量值
                functionTypeParameters = true, -- 显示函数类型参数名
                parameterNames = true, -- 显示函数调用时的参数名
                rangeVariableTypes = true, -- 显示 range 变量类型
              },
            },
          },
        },
      },
    },
  },
}
