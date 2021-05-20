local colors = require('bogsterish.colors')

local bogsterish = {}

bogsterish.normal = {
    a = { fg=colors.fg0  , bg=colors.base3, gui="bold" },
    b = { fg=colors.fg1  , bg=colors.base2 },
    c = { fg=colors.fg1  , bg=colors.base1 }
}

bogsterish.visual = {
    a = { fg=colors.base0, bg=colors.light_teal, gui="bold" },
    b = { fg=colors.fg1  , bg=colors.base2 }
}

bogsterish.insert = {
    a = { fg=colors.base0, bg=colors.green, gui="bold" },
    b = { fg=colors.fg1  , bg=colors.base2 }
}

bogsterish.replace = {
    a = { fg=colors.base0, bg=colors.red, gui="bold" },
    b = { fg=colors.fg1  , bg=colors.base2 }
}

bogsterish.command = {
    a = { fg=colors.base0, bg=colors.yellow, gui="bold" },
    b = { fg=colors.fg1  , bg=colors.base2 }
}

bogsterish.inactive = {
    a = { fg=colors.base5, bg=colors.base0, gui="bold" },
    b = { fg=colors.base5, bg=colors.base0 },
    c = { fg=colors.base5, bg=colors.base1 }
}

return bogsterish
