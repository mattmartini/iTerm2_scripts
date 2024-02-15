#   README for iTerm Scripts

This is a collection of scripts that will make interacting between the Finder
and iTerm2 much easier.

The main scripts help you manage changing directories. The rest are utilities.

_bash scripts_

`cdf` - this will change your iTerm session to the Folder that the top most  
      Finder window is opened to.

`fdc` - this will change the Folder of the finder to your cwd


_Finder Apps_

`tcdf.app` - this acts like cdf, changes iTerm session to the Folder  
           that the Finder window is opened to, but it is activated from  
           an icon in the Finder Toolbar (see INSTALL)


_bash functions_

`is_iTerm` - checks if running in iTerm

`iterm_profile_show` - shows the name of the current profile

`iterm_get_profile_name` - gets the current profile name

`iterm_profile_set <profile_name>` - sets the current profile

`iterm_transparency_show` - shows the current transparency

`iterm_transparency_set` - sets the transparency to 0.1

`iterm_post_notification` - send a notification to the Mac

`iterm_growl` - write a message to growl

`iterm_attn_fw` - make "fireworks at the cursor"

`iterm_attn_on` - bring attention to iTerm2 on the Dock

`iterm_attn_off` - turn off above

`iterm_write_text` - write text as if you had typed it

`iterm_tab_color_set` - change the color of the current tab

`iterm_tab_color_reset` - remove color from current tab

`iterm_cursor_shape_block` - change cursor shape to block

`iterm_cursor_shape_bar` - change cursor shape to bar

`iterm_cursor_shape_underline` - change cursor shape to underscore

`iterm_show_foreground_color` - show fg color

`iterm_show_background_color` -show bg color

`iterm_steal_focus` - steal focus back to iterm

`iterm_set_background_image` - set a base64-encoded filename to display as a background image

`iterm_change_session_color` - change color pallet  
  -  $1 color to change: fg bg bold link selbg selfg curbg curfg underline tab" black red green yellow blue magenta cyan white br_black br_red br_green br_yellow br_blue br_magenta br_cyan br_white  
  -  $2 RRGGBB or rgb:RRGGBB or srgb:RRGGBB or p3:RRGGBB

`iterm_change_session_color_alt` - change color pallet alternate  
  -  $1 color to change: g foreground, h background, i bold, j selection, k selected text, l cursor, m cursor text  
  -  $2 RRGGBB

See INSTALL for installation notes.

## License

Copyright ©️  2017-2024 Matt Martini <matt@imaginarywave.com>  
This program is free software: distributed under GNU GPLv3, see LICENSE.
