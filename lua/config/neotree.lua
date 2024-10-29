vim.fn.sign_define("DiagnosticSignError", {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn", {text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo", {text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint", {text = "󰌵", texthl = "DiagnosticSignHint"})

require("neo-tree").setup {
    default_component_configs = {
        indent = {
            with_expanders = true,  -- Включает возможность сворачивания
        },
        icon = {
            folder_empty = "",  -- Иконка для пустых папок
            folder_open = "",    -- Иконка для открытых папок
            folder_closed = "",  -- Иконка для закрытых папок
            default = "",        -- Иконка по умолчанию для файлов
        },
    },

    filesystem = {
        filtered_items = {
            hide_dotfiles = false,  -- Показать скрытые файлы
        },
    },
	
	 git_status = {
        symbols = {
            added     = "✚",  -- Иконка для добавленных файлов
            modified  = "✏",  -- Иконка для измененных файлов
            deleted   = "✖",  -- Иконка для удаленных файлов
            renamed   = "➜",  -- Иконка для переименованных файлов
            untracked = "★",  -- Иконка для неотслеживаемых файлов
        },
    },
}
