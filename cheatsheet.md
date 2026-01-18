## Ghostty

[Options Reference](https://ghostty.org/docs/config/reference)

[Keybind Actions Reference](https://ghostty.org/docs/config/keybind/reference)

| Action                              | Shortcut / Command                    |
|-------------------------------------|---------------------------------------|
| Reload Configuration                | ctrl + shift + ,                      |
| List fonts, list themes             | ghostty +list-fonts or +list-themes   |
| List default keybinds               | ghostty +list-keybinds --default      |

### Keybinds

#### Splits
##### Creating new split
keybind = ctrl+shift+a=new_split:auto
keybind = ctrl+shift+d=new_split:down
keybind = ctrl+shift+r=new_split:right
##### Goto split
keybind = ctrl+shift+arrow_left=goto_split:left
keybind = ctrl+shift+arrow_up=goto_split:up
keybind = ctrl+shift+arrow_right=goto_split:right
keybind = ctrl+shift+arrow_down=goto_split:down
##### Split zoom
keybind = ctrl+shift+z=toggle_split_zoom
##### Resizing splits
keybind = super+ctrl+shift+arrow_down=resize_split:down,20
keybind = super+ctrl+shift+arrow_left=resize_split:left,20
keybind = super+ctrl+shift+arrow_right=resize_split:right,20
keybind = super+ctrl+shift+arrow_up=resize_split:up,20
##### Equalise split sizing
keybind = ctrl+shift+e=equalize_splits

#### Tabs
##### New tab
keybind = ctrl+shift+t=new_tab
##### Close tab 
keybind = ctrl+shift+q=close_tab
##### Next / previous tab
keybind = ctrl+shift+bracket_left=previous_tab
keybind = ctrl+shift+bracket_right=next_tab
##### Move tab forwards or backwards
keybind = super+ctrl+shift+bracket_left=move_tab:-1
keybind = super+ctrl+shift+bracket_right=move_tab:1
##### Goto tab number
keybind = ctrl+shift+1=goto_tab:1
keybind = ctrl+shift+2=goto_tab:2
keybind = ctrl+shift+3=goto_tab:3
keybind = ctrl+shift+4=goto_tab:4
keybind = ctrl+shift+5=goto_tab:5
keybind = ctrl+shift+6=goto_tab:6
keybind = ctrl+shift+7=goto_tab:7
keybind = ctrl+shift+8=goto_tab:8
keybind = ctrl+shift+9=goto_tab:9

#### Other
##### Close surface (this may refer to a split, tab or window)
keybind = ctrl+shift+w=close_surface
##### Undo and redo
keybind = ctrl+shift+u=undo
keybind = ctrl+shift+r=redo
##### New windor
keybind = ctrl+shift+n=new_window
##### Copy and paste
keybind = ctrl+shift+c=copy_to_clipboard
keybind = ctrl+shift+v=paste_from_clipboard
##### Increase or decrease font size
keybind = ctrl+equal=increase_font_size:1
keybind = ctrl++=decrease_font_size:1
##### Scroll by half a page
keybind = ctrl+shift+page_up=scroll_page_fractional:-0.5
keybind = ctrl+shift+page_down=scroll_page_fractional:0.5

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
| Delete selection and insert (change)  | c                                     |
| Delete selection (This is cut!)       | d                                     |
| Paste after selection                 | p                                     |
| Paste before selection                | P                                     |
| Yank (copy). Doesn't affect clipbrd   | y                                     |
| Copy to clipboard                     | space + y                             |
| Paste from clipboard                  | space + p                             |
| Replace character(s)                  | r + character                         |
| Replace selection with yanked text    | R                                     |
| Select mode. Like holding shift       | v. Press v or esc to exit             |
| Undo                                  | u                                     |
| Redo                                  | U                                     |
| File picker, recurses through dirs    | space + f                             |
| File picker, only current dir         | space + F                             |
| Action picker                         | space + ?                             |
| See modified files (git changes)      | space + g                             |
| Open the previously used picker       | space + '                             |
| Symbol picker (LSP)                   | space + s                             |
| Show info on current selection (LSP)  | space + k                             |
| Search current file, top to bottom    | /                                     |
| Search - Go to next occurance         | n                                     |
| Search - Go to previous occurance     | N                                     |
| Search current file, bottom to top    | ?                                     |
| Search for current selection          | *                                     |
| Ctrl + d from vscode                  | *, v, n. Back to one cursor with ,    |
| Global file content search            | space + /                             |
| Repeat insertion                      | . (full stop)                         |
| Repeat motion                         | alt + . (full stop)                   |
| Comment or uncomment selected linet   | ctrl + c, or space + c                |
| Multiline comment                     | space + C                             |
| Join lines (remove newlines)          | J                                     |
| Indent or de-indend line(s)           | < or >                                |

