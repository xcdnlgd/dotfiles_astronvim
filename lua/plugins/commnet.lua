return {
    "numToStr/Comment.nvim",
    opts = function(_,_)
        local ft = require('Comment.ft')
        ft.asm = ';%s'
    end,
}
