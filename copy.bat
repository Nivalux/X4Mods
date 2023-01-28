echo off

set "GAME_EXT=C:\Program Files (x86)\Steam\steamapps\common\X4 Foundations\extensions"

copy "%GAME_EXT%\randommine\content.xml" "randommine\content.xml"
copy  "%GAME_EXT%\randomsupply\content.xml" "randomsupply\content.xml"

robocopy  "randommine" "%GAME_EXT%\randommine" /s
robocopy  "randomsupply" "%GAME_EXT%\randomsupply" /s