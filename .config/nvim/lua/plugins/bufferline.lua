vim.opt.termguicolors = true
local mocha = require("catppuccin.palettes").get_palette "mocha"

require('bufferline').setup{
    options = {
        custom_filter = function(buf_number)
        if vim.bo[buf_number].filetype ~= "neo-tree" then
            return true
        end
            return false
        end,
    
        offsets = {
            {
                filetype = "neo-tree",
                text = "󰙅 File Explorer",
                highlight = "Directory",
                separator = true 
            }
        }
    },
    highlights = require("catppuccin.special.bufferline").get_theme {
        styles = { "italic", "bold" },
        custom = {
            all = {
                fill = { bg = "#000000" },
            },
            mocha = {
                background = { fg = mocha.text },
            },
            latte = {
                background = { fg = "#000000" },
            },
        },
    },
}
