return {
    'rose-pine/neovim',
    config = function ()
        local rose = require("rose-pine")

        rose.setup({
            variant = "moon",
            dark_variant = "moon",
            disable_italics = true,
            disable_background = false,
            disable_float_background = false,
        })
    end
}
