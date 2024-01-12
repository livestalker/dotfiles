local flavour = 'mocha'
local catppuccin = require('catppuccin.utils.lualine')(flavour)
local C = require('catppuccin.palettes').get_palette(flavour)
catppuccin.normal.a.bg = C.mauve
catppuccin.visual.a.bg = C.blue

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        globalstatus = true,
        sections = {
            lualine_c = {
                {
                    "navic"
                }
            },
            -- lualine_z = {
            --     { extra_mode_status },
            -- },
        },
        options = {
            theme = catppuccin,
        },
        tabline = {
            lualine_a = {
                {
                    'tabs',
                    mode = 0,
                    tabs_color = {
                        active = 'lualine_b_normal',
                        inactive = 'lualine_b_inactive',
                    },
                },
            },
            lualine_b = {
                {
                    'buffers',
                    show_filename_only = true,
                    show_bufnr = true,
                    mode = 4,
                    filetype_names = {
                        NvimTree = 'project',
                        TelescopePrompt = 'telescope',
                    },
                    buffers_color = {
                        active = 'lualine_a_normal',
                        inactive = 'lualine_a_inactive',
                    },
                },
            },
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
        },
        -- winbar = {
        --     lualine_z = {
        --         {
        --             'filename',
        --             path = 1,
        --             file_status = true,
        --             newfile_status = true,
        --         },
        --     },
        -- }
        extensions = { 'fugitive', 'fzf', 'toggleterm', 'quickfix', 'nvim-tree' },
    },
}
