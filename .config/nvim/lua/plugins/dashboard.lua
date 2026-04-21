require('dashboard').setup {
    theme = 'hyper',
    config = {
        header = {
            '',
            '    ███            ███████        ',
            '   ███ ███        ███    ███      ',
            '   ███  ███       ███     ███     ',
            '   ███   ███      ███      ███    ',
            '   ███    ███     ███       ███   ',
            '   ███     ███    ███        ███  ',
            '   ███      ███   ███        ███  ',
            '   ███       ███  ███        ███  ',
            '   ███        ███ ███        ███  ',
            '   ███         ██████       ███   ',
            '    ██           ███ ████████       ',
            '',
        },
        shortcut = {
            { desc = '  New File', group = 'Label', action = 'enew', key = 'n' },
            { desc = '  Terminal', group = 'Label', action = 'ToggleTerm direction=float', key= 't' },
            { desc = '  Files', group = 'Label', action = 'FFFFind', key = 'f' },
            { desc = ' 󰈆 Quit', group = 'Label', action = 'qa', key = 'q' },
        },
        footer = {},
    },

    highlight = {
        DashboardHeader = "#A6E3A1"
    },

    hide = {
        statusline = true,       -- hide statusline default is true
        tabline = true,         -- hide the tabline
        winbar = true,          -- hide winbar
    },

    preview = {
        command,          -- preview command
        file_path,        -- preview file path
        file_height,      -- preview file height
        file_width,       -- preview file width
    },
}
