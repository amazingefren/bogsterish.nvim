local hsl = require'lush'.hsl

local lua_colors = {
    -- Base Colors
    red = "#ED5E84", -- tweaked
    light_red = "#DC5B80",
    orange = "#F2A145",
    yellow = "#E1BA56",
    green = "#6BE156",
    light_green = "#83E85E",
    blue = "#5BC0DC",
    light_blue = "#5BDCD8",
    purple = "#B85BDC",
    pink = "#DC5BC0",
    teal = "#2DD2A3",
    light_teal = "#5BDCB8",
    -- Highlight
    bg = "#161C23", --base0
    base2 = "#313F4E", -- base2 need to rename
    linenr = "#415368", -- base3
    fg = "#E5DED7", --fg1
    fg_alt = "#C7B8AE", --fg0
    comment = "#627D9D", -- base5
    visual = "#232E38", --base1

}

local colors = {
    base0 = hsl(212, 23, 11),
    base1 = hsl(211, 23, 18),
    base2 = hsl(211, 23, 25),
    base3 = hsl(212, 23, 33),
    base4 = hsl(213, 23, 42),
    base5 = hsl(213, 23, 50),
    base6 = hsl(230, 23, 69),
    base7 = hsl(240, 15, 75),
    base8 = hsl(267, 9, 80),
    fg0 = hsl(26, 18, 73),
    fg1 = hsl(32, 22, 87),
    fg2 = hsl(26, 18, 81),
    red = hsl(344, 88, 61),
    light_red = hsl(343, 65, 61),
    orange = hsl(32, 87, 61),
    yellow = hsl(43, 70, 61),
    green = hsl(111, 70, 61),
    light_green = hsl(104, 75, 64),
    blue = hsl(193, 65, 61),
    light_blue = hsl(178, 65, 61),
    purple = hsl(283, 65, 61),
    pink = hsl(313, 65, 61),
    teal = hsl(163, 65, 50),
    light_teal = hsl(163 ,65 ,61)
}

return colors, lua_colors
