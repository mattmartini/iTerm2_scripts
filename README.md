################################################################################
#                                                                              #
#   README for iTerm Scripts
#                                                                              #
###   Copyright (C) 2017 Matt Martini <matt@imaginarywave.com>                 #
#                                                                              #
###   This program is free software: distributed under GNU GPLv3, see LICENSE. #
#                                                                              #
################################################################################

This is a collection of scripts that will make interacting between the Finder
and iTerm2 much easier.

Most of the scripts help you manage changing directories.

_bash scripts_

`cdf` - this will change your iTerm session to the Folder that the top most
      Finder window is opened to.

`fdc` - this will change the Folder of the finder to your cwd


_Finder Apps_

`tcdf.app` - this acts like cdf, changes iTerm session to the Folder
           that the Finder window is opened to, but it is activated from
           an icon in the Finder Toolbar (see INSTALL)


_bash functions_

iterm_profile_show - shows the name of the current profile
iterm_profile_set <profile_name> - sets the current profile
iterm_transparency_show - shows the current transparency
iterm_transparency_set - sets the transparency to 0.1
iterm_growl - write a message to growl
iterm_attn_fw - make "fireworks at the cursor"
iterm_attn_on - bring attention to iTerm2 on the Dock
iterm_attn_off - turn off above
iterm_write_text - write text as if you had typed it


See INSTALL for installation notes.
