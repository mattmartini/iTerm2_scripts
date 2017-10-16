################################################################################
#                                                                              #
#   iterm2 functions (needs version 3+)                                        #
#                                                                              #
#   $Id: iterm_fns,v 1.1 2017/10/16 01:16:55 martini Exp $                     #
#                                                                              #
#   Copyright (C) 2017 Matt Martini <matt@imaginarywave.com>                   #
#   This program is free software: distributed under GNU GPLv3, see LICENSE.   #
#                                                                              #
################################################################################

###   Profile settings

function iterm_profile_show() {
  echo $(osascript -e 'tell application "iTerm" to profile name of current session of current window')
}

function iterm_profile_set() {
  echo -e "\033]1337;SetProfile=$1\x7"
}


###   Transparency

function iterm_transparency_show() {
  echo $(osascript -e 'tell application "iTerm" to transparency of current session of current window')
}

function iterm_transparency_set() {
  osascript -e \
 $'on run argv
    tell application "iTerm"
      tell current session of current window
        set transparency to (item 1 of argv)
      end tell
  end tell
end run' "0.1"
# default: 0.021844660863
}


###   Send message to growl

function iterm_growl() {
  echo -e "\033]9;$1\x07"
}


###   Make fireworks at cursor

function iterm_attn_fw() {
  echo -e "\033]1337;RequestAttention=fireworks\x07"
}


###   Get attention on dock icon - doesn't work on Yosemite

function iterm_attn_on() {
  echo -e "\033]1337;RequestAttention=on\x07"
}

function iterm_attn_off() {
  echo -e "\033]1337;RequestAttention=no\x07"
}


###  wrtie text as if you typed it
function iterm_write_text() {
  osascript -e \
$'on run argv
    tell application "iTerm"
      tell current session of current window
        write text (item 1 of argv)
      end tell
  end tell
end run' "$1"
}


# vim:set ft=sh
