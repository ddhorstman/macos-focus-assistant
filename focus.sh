#!/bin/bash
# https://heyfocus.com/blog/how-to-turn-on-mac-focus-mode-from-the-terminal/
function focusOn(){
  # 'AC' or 'Battery'
  POWER_SOURCE=`pmset -g batt | cut -d "'" -f 2 | cut -d " " -f 1`
  if [[ "$POWER_SOURCE" != 'AC' ]] return;

  # 'Yes' or 'No'
  CLAMSHELL_STATUS=`ioreg -r -k AppleClamshellState | grep '"AppleClamshellState"' | cut -f2 -d "=" | tr -d " "`

  # 'Do Not Disturb' or '' (becomes 'Focus Off')
  FOCUS_STATUS=`shortcuts run "Get Focus"`
  if [[ "$FOCUS_STATUS" == '' ]] FOCUS_STATUS="Focus Off"

  # echo "$POWER_STRING"
  # echo "$CLAMSHELL_STATUS"
  # echo "$FOCUS_STATUS"
  
  if [[ "$FOCUS_STATUS" != 'Focus Off' ]] && [[ "$CLAMSHELL_STATUS" == 'No' ]]; then
    # echo "Turn Focus Off"
    shortcuts run "Focus Off"
  elif [[ "$FOCUS_STATUS" == 'Focus Off' ]] && [[ "$CLAMSHELL_STATUS" == 'Yes' ]]; then
    # echo "Turn Focus On"
    shortcuts run "Focus On"
  # else
  #   echo "Focus Already Correct!"
  fi

}
