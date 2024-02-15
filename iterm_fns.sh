################################################################################
#                                                                              #
#   iterm2 functions (needs version 3+)                                        #
#                                                                              #
#   $Id: iterm_fns.sh 2.1 2023-12-30 11:43:55 martini Exp $                    #
#                                                                              #
#   Copyright ©️  2017-2024  Matt Martini <matt@imaginarywave.com>              #
#   This program is free software: distributed under GNU GPLv3, see LICENSE.   #
#                                                                              #
################################################################################

if [[ "${___iterm_fns_imported:-0}" == 1 ]]; then
    return 0
fi
___iterm_fns_imported=1


is_iTerm() {
  if [[ ${LC_TERMINAL} == "iTerm2" ]]; then
    return 0
  fi
  return 1
}


if is_iTerm; then

  ###   Profile settings
  iterm_profile_show() {
    osascript -e 'tell application "iTerm" to profile name of current session of current window'
  }

  iterm_get_profile_name() {
    echo ${ITERM_PROFILE:=MERM-Solarized-Dark}
  }

  iterm_profile_set() {
    local newname=${1:-MERM-Solarized-Dark}
    echo -ne "\033]1337;SetProfile=$newname\x7"
    export ITERM_PROFILE=$newname
  }

  ###   Transparency
  iterm_transparency_show() {
    osascript -e 'tell application "iTerm" to transparency of current session of current window'
  }

  iterm_transparency_set() {
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

  ###   post a notification
  iterm_post_notification() {
    echo -e "\033]9;$*\x07"
  }

  ###   Send message to growl
  iterm_growl() {
    echo -e "\033]9;$*\x07"
  }

  ###   Make fireworks at cursor
  iterm_attn_fw() {
    echo -e "\033]1337;RequestAttention=fireworks\x07"
  }

  ###   Get attention on dock icon - doesn't work on Yosemite+
  iterm_attn_on() {
    echo -e "\033]1337;RequestAttention=on\x07"
  }

  iterm_attn_off() {
    echo -e "\033]1337;RequestAttention=no\x07"
  }

  ###  wrtie text as if you typed it
  iterm_write_text() {
    osascript -e \
      $'on run argv
      tell application "iTerm"
      tell current session of current window
      write text (item 1 of argv)
      end tell
      end tell
      end run' "$1"
  }

  ###   set the tab and window title color
  # iterm_tab_color_set <red_value> <green_value> <blue_value>  # 0-255 decimal
  iterm_tab_color_set(){
    echo -e "\033]6;1;bg;red;brightness;$1\a"
    echo -e "\033]6;1;bg;green;brightness;$2\a"
    echo -e "\033]6;1;bg;blue;brightness;$3\a"
  }

  iterm_tab_color_reset(){
    echo -e "\033]6;1;bg;*;default\a"
  }

  ###   set cursor shape
  iterm_cursor_shape_block() {
    echo -e "\033]1337;CursorShape=0\x07"
  }

  iterm_cursor_shape_bar() {
    echo -e "\033]1337;CursorShape=1\x07"
  }

  iterm_cursor_shape_underline() {
    echo -e "\033]1337;CursorShape=2\x07"
  }

  ###   report fg/bg colors
  iterm_show_foreground_color(){
    echo -e "\033]4;-1;?\x07"
    echo
    sleep 5
  }

  iterm_show_background_color(){
    echo -e "\033]4;-2;?\x07"
    echo
    sleep 5
  }

  ###   steal focus
  iterm_steal_focus() {
    echo -e "\033]1337;StealFocus\x07"
  }

  ###   set background image
  # arg is a base64-encoded filename to display as a background image
  iterm_set_background_image(){
    echo -e "\033]1337;SetBackgroundImageFile=$1\x07"
  }

  ###   change color palette
  # $1 color to change: fg bg bold link selbg selfg curbg curfg underline tab" black red green yellow blue magenta cyan white br_black br_red br_green br_yellow br_blue br_magenta br_cyan br_white
  # $2 RRGGBB or rgb:RRGGBB or srgb:RRGGBB or p3:RRGGBB
  # ex:  "\033]1337;SetColors=fg=ffffff\x07"
  iterm_change_session_color() {
    echo -e "\033]1337;SetColors=$1=$2\x07"
  }

  ###   change color palette alternate
  # $1 color to change: g foreground, h background, i bold, j selection, k selected text, l cursor, m cursor text
  # $2 RRGGBB
  # ex:  "\033]Pgffffff\033\\"
  iterm_change_session_color_alt() {
    echo -e "\033]P$1$2\033\\"
  }

fi


# vim:ft=bash

