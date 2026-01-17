## Ghostty

| Action                              | Shortcut                              |
|-------------------------------------|---------------------------------------|
| | |

## Helix

| Action                              | Shortcut                              |
|-------------------------------------|---------------------------------------|
| Open tutorial                       | hx --tutor                            |
| Check LSP status                    | hx --health, or hx --health language  |
| Open 1 file, >1 file, or a direcory | hx file.rs, hx f1.rs f2.rs, hx .      |
| Open command mode                   | : (colon), use tab and shift+tab      |
| Quit, Write+Quit, Write+Quit All    | :q or :quit, :wq, :wqa                |
| Force quit (don't save)             | :q!                                   |
| Open file                           | :o file.rs, also :e or :edit          |
| Print the current working directory | :pwd                                  |
| Change directory                    | :cd dir                               |
| Change theme temporarily            | :theme, tab between themes            |
| Open the helix config               | :open-config                          |

Every movement in Helix is a selection.

| Action                                | Vim-Style Keybinding                  |
|---------------------------------------|---------------------------------------|
| left up down right                    | h j k l                               |
| Jump to end of next word              | e                                     |
| Jump to beginning of next word        | w                                     |
| Jump to end of previous word          | b                                     |
| See prev, ignore punctuation          | W E B                                 |
| Jump to next occurance of symbol      | f + symbol, e.g. f + , (**f**ind)     |
| Same as f, but stops short of symbol  | t + symbol (un**t**il)                |
| See f, t, but goes backwards          | F T                                   |
| Move half a page up or down           | ctrl + u, ctrl + d                    |
| Move full page forwards or backwards  | ctrl + f, ctrl + b                    |
| Go to line, e.g. line 15              | number G, e.g. 15G                    |
| Repeat command. E.g. 3w moves 3 words | number command                        |
| Select whole line                     | x                                     |
| Select multiple lines                 | Press x multiple times                |
| Collapse selection (deselect)         | ; or just move                        |
| goto mode                             | g                                     |
| goto start or end of file             | gg ge                                 |
| goto part of file                     | gw                                    |
| goto definition                       | gd                                    |
| Open file, when above a file path     | gf                                    |
| Move inwards/outwards wgt files       | ctrl i, ctrl o                        |
| Goto last place I modified in file    | g.                                    |
| Insert mode, before selection         | i                                     |
| Insert mode, after sel. (Append)      | a                                     |
| Insert mode, beginning of line        | I                                     |
| Insert mode, end of line              | A                                     |
| Insert mode, new line below           | o                                     |
| Insert mode, new line above           | O                                     |
| Delete selection and insert mode      | c                                     |
| Delete selection (This is cut!)       | d                                     |
| Paste after selection                 | p                                     |
| Paste before selection                | P                                     |
| Yank (copy). Doesn't affect clipbrd   | y                                     |
| Copy to clipboard                     | space + y                             |
| Paste from clipboard                  | space + p                             |
| Replace character(s)                  | r + character                         |
| Replace selection with yanked text    | R                                     |

