local lush = require('lush')
local hsl = lush.hsl

-- Colors
local base0 = hsl(212, 23, 11)
local base1 = hsl(211, 23, 18)
local base2 = hsl(211, 23, 25)
local base3 = hsl(212, 23, 33)
local base4 = hsl(213, 23, 42)
local base5 = hsl(213, 23, 50)
local base6 = hsl(230, 23, 69)
local base7 = hsl(240, 15, 75)
local base8 = hsl(267, 9, 80)
local fg0 = hsl(26, 18, 73)
local fg1 = hsl(32, 22, 87)
local fg2 = hsl(26, 18, 81)
local fg3 = hsl(26, 18, 64)
local red = hsl(344, 88, 61)
local light_red = hsl(343, 65, 61)
local orange = hsl(32, 87, 61)
local yellow = hsl(43, 70, 61)
local green = hsl(111, 70, 61)
local light_green = hsl(104, 75, 64)
local blue = hsl(193, 65, 61)
local light_blue = hsl(178, 65, 61)
local purple = hsl(283, 65, 61)
local pink = hsl(313, 65, 61)
local teal = hsl(163, 65, 50)
local light_teal = hsl(163 ,65 ,61)

local styles={
    bold="",
    curly="undercurl",
    underline="underline",
    strike="strikethrough",
    reverse="reverse",
    inverse="inverse",
    italic="italic",
    standout="standout",
    nocombine="nocombine",
    none="NONE"
}

local theme = lush(function()
  return {
    Comment      { fg=base5 }, -- any comment
    ColorColumn  { bg=base0}, -- used for the columns set with 'colorcolumn'
    Conceal      { fg=blue }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { fg=light_blue, gui=styles.vnverse }, -- character under the cursor
    lCursor      { Cursor }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { Cursor }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg=base1 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg=base1 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg=light_blue, gui=styles.bold }, -- directory names (and other special names in listings)
    DiffAdd      { bg=base0, fg=green }, -- diff mode: Added line |diff.txt|
    DiffChange   { bg=base0, fg=yellow}, -- diff mode: Changed line |diff.txt|
    DiffDelete   { bg=base0, fg=light_red }, -- diff mode: Deleted line |diff.txt|
    DiffText     { fg=fg0 }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { gui="inverse" }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { bg=base1, fg=light_red, gui=styles.bold }, -- error messages on the command line
    VertSplit    { fg=base1, bg=base1 }, -- the column separating vertically split windows
    Folded       { fg=fg0, bg=base1 }, -- line used for closed folds
    FoldColumn   { fg=fg0, bg=base1 }, -- 'foldcolumn'
    SignColumn   { bg=base0 }, -- column where |signs| are displayed
    IncSearch    { fg=base0, bg=fg1 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { IncSearch }, -- |:substitute| replacement text highlighting
    LineNr       { fg=base3 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg=light_blue}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg=base3, gui=styles.bold }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg=fg0, gui=styles.bold }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { fg=fg0 }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { ModeMsg }, -- |more-prompt|
    NonText      { fg=base0 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg=fg2, bg=base0 }, -- normal text
    NormalFloat  { Normal }, -- Normal text in floating windows.
    NormalNC     { Normal }, -- normal text in non-current windows
    Pmenu        { fg=fg0, bg=base1 }, -- Popup menu: normal item.
    PmenuSel     { fg=fg0, bg=base2, gui=styles.bold }, -- Popup menu: selected item.
    PmenuSbar    { bg=base2 }, -- Popup menu: scrollbar.
    PmenuThumb   { bg=base2 }, -- Popup menu: Thumb of the scrollbar.
    Question     { fg=fg0, gui=styles.bold }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { fg=base0, bg=yellow, gui=styles.bold }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { fg=base0, bg=fg1 }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   { fg=base3 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { sp=red, gui=styles.curly }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { sp=purple, gui=styles.curly }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg=fg0, bg=base1 }, -- status line of current window
    StatusLineNC { fg=base3, bg=base1 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { StatusLineNC }, -- tab pages line, not active tab page label
    TabLineFill  { StatusLineNC }, -- tab pages line, where there are no labels
    TabLineSel   { StatusLine }, -- tab pages line, active tab page label
    Title        { fg=fg1, gui=styles.bold }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { fg=base8, bg=base1, gui=nil }, -- Visual mode selection --- TODO: check for base fg visibility
    VisualNOS    { Visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg=orange, bg=base1, gui=styles.bold }, -- warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { fg=blue, bg=base1, gui=styles.bold}, -- current match in 'wildmenu' completion

    Constant       { fg=light_teal }, -- (preferred) any constant
    String         { Constant }, --   a string constant: "this is a string"
    Character      { Constant }, --  a character constant: 'c', '\n'
    Number         { fg=blue }, --   a number constant: 234, 0xff
    Boolean        { Constant }, --  a boolean constant: TRUE, false
    Float          { Number }, --    a floating point constant: 2.3e10

    Identifier     { fg=light_red }, -- (preferred) any variable name
    Function       { fg=light_blue, gui=styles.bold }, -- function name (also: methods for classes)

    Statement      { fg=yellow }, -- (preferred) any statement
    Conditional    { Statement }, --  if, then, else, endif, switch, etc.
    Repeat         { fg=orange }, --   for, do, while, etc.
    Label          { fg=light_blue }, --    case, default, etc.
    Operator       { fg=orange }, -- "sizeof", "+", "*", etc.
    Keyword        { fg=yellow }, --  any other keyword
    Exception      { Statement }, --  try, catch, throw

    PreProc        { fg=fg0 }, -- (preferred) generic Preprocessor
    Include        { Statement }, --  preprocessor #include
    Define         { PreProc }, --   preprocessor #define
    Macro          { PreProc }, --    same as Define
    PreCondit      { PreProc }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg=light_red }, -- (preferred) int, long, char, etc.
    StorageClass   { Statement }, -- static, register, volatile, etc.
    Structure      { Statement }, --  struct, union, enum, etc.
    Typedef        { fg=yellow }, --  A typedef

    Special        { fg=light_green }, -- (preferred) any special symbol
    SpecialChar    { Special }, --  special character in a constant
    Tag            { Title  }, --    you can use CTRL-] on this
    Delimiter      { fg=fg1 }, --  character that needs attention
    SpecialComment { fg=fg1 }, -- special things inside a comment
    Debug          { Special }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { sp=red, gui=styles.curly .. ',' .. styles.bold }, -- (preferred) any erroneous construct

    Todo           { fg=fg0, bg=base0, gui=styles.bold}, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    LspError    {fg=red},
    LspWarning  {fg=orange},
    LspInfo     {fg=light_blue},
    LspHint     {fg=teal},

    LspReferenceText                     { fg=fg1 }, -- used for highlighting "text" references
    LspReferenceRead                     { fg=fg0 }, -- used for highlighting "read" references
    LspReferenceWrite                    { fg=fg0 }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           { bg=red, fg=base0 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { bg=orange, fg=base0 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation     { bg=light_blue, fg=base0 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint            { bg=teal, fg=base0 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    LspDiagnosticsVirtualTextError       { LspError }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning     { LspWarning }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation { LspInfo }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint        { LspHint }, -- Used for "Hint" diagnostic virtual text

    LspDiagnosticsUnderlineError         { Error }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning       { sp=orange, gui=styles.curly }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation   { sp=light_blue, gui=styles.curly }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint          { sp=teal, gui=styles.curly }, -- Used to underline "Hint" diagnostics

    LspDiagnosticsFloatingError          { LspError, bg=base1 }, -- Used to color "Error" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingWarning        { LspWarning, bg=base1 }, -- Used to color "Warning" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingInformation    { LspInfo, bg=base1 }, -- Used to color "Information" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingHint           { LspHint, bg=base1 }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError              { LspError }, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            { LspWarning }, -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation        { LspInfo }, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint               { LspHint }, -- Used for "Hint" signs in sign column

    TSAnnotation         { PreProc };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { PreProc };    -- (unstable) TODO: docs
    TSBoolean            { Constant };    -- For booleans.
    TSCharacter          { Constant };    -- For characters.
    TSComment            { Comment };    -- For comment blocks.
    TSConstructor        { Special };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    TSConditional        { Conditional };    -- For keywords related to conditionnals.
    TSConstant           { Constant };    -- For constants
    TSConstBuiltin       { Special };    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro         { Define };    -- For constants that are defined by macros: `NULL` in C.
    TSError              { Error };    -- For syntax/parser errors.
    TSException          { Exception };    -- For exception related keywords.
    TSField              { Identifier };    -- For fields.
    TSFloat              { Float };    -- For floats.
    TSFunction           { Function };    -- For function (calls and definitions).
    TSFuncBuiltin        { Special };    -- For builtin functions: `table.insert` in Lua.
    TSFuncMacro          { Macro };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude            { Include };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword            { Keyword };    -- For keywords that don't fall in previous categories.
    TSKeywordFunction    { Keyword };    -- For keywords used to define a fuction.
    TSLabel              { Label };    -- For labels: `label:` in C and `:label:` in Lua.
    TSMethod             { Function };    -- For method calls and definitions.
    TSNamespace          { Include };    -- For identifiers referring to modules and namespaces.
    TSNone               { };    -- TODO: docs
    TSNumber             { Number };    -- For all numbers
    TSOperator           { Operator };    -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter          { Identifier };    -- For parameters of a function.
    TSParameterReference { TSParameter };    -- For references to parameters of a function.
    TSProperty           { Identifier };    -- Same as `TSField`.
    TSPunctDelimiter     { Delimiter };    -- For delimiters ie: `.`
    TSPunctBracket       { Delimiter };    -- For brackets and parens.
    TSPunctSpecial       { Delimiter };    -- For special punctutation that does not fall in the catagories before.
    TSRepeat             { Repeat };    -- For keywords related to loops.
    TSString             { String };    -- For strings.
    TSStringRegex        { String };    -- For regexes.
    TSStringEscape       { SpecialChar };    -- For escape characters within a string.
    TSSymbol             { SpecialChar };    -- For identifiers referring to symbols or atoms.
    TSType               { Type };    -- For types.
    TSTypeBuiltin        { Type };    -- For builtin types.
    TSVariable           { Special };    -- Any variable name that does not have another highlight.
    TSVariableBuiltin    { Special };    -- Variable names that are defined by the languages, like `this` or `self`.

    TSTag                { Operator };    -- Tags like html tag names.
    TSTagDelimiter       { Tag };    -- Tag delimiter like `<` `>` `/`
    TSText               { TSNone };    -- For strings considered text in a markup language.
    TSEmphasis           { gui="italic" };    -- For text to be represented with emphasis.
    TSUnderline          { gui=styles.curly };    -- For text to be represented with an underline.
    TSStrike             { gui="strikethrough" };    -- For strikethrough text.
    TSTitle              { Title };    -- Text that is part of a title.
    TSLiteral            { String };    -- Literal text.
    TSURI                { Underlined };    -- Any URI like a link or email.

    -- Telescope 
    TelescopePromptBorder       {fg=blue};
    TelescopeResultsBorder      {fg=teal};
    TelescopePreviewBorder      {fg=fg0};
    TelescopeSelectionCaret     {fg=base5};
    TelescopeSelection          {bg=base1, fg=fg1};
    TelescopeMatching           {fg=red};
    TelescopeNormal             {fg=base5, bg=base0};
    TelescopeMultiSelection     {fg=base5}

  }
end)

return theme

-- vi:nowrap
