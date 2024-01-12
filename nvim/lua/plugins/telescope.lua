return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 
            {'nvim-lua/plenary.nvim'},
            {
                "extra_pickers.nvim",
                dir = "~/Projects/nvim/extra_pickers.nvim"
            }
        },
        opts = {
            defaults = {
                mappings = {
                    i = {
                        ["<C-h>"] = "which_key",
                    }
                }
            },
            extensions = {
                extra_pickers = {
                }
            }
        },
    },
}
