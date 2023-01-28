# X4Mods
Mods for X4 Foundations. 
Currently these are [RandomSupply Delta](https://steamcommunity.com/sharedfiles/filedetails/?id=2924740102) and [RandomMine Delta](https://steamcommunity.com/sharedfiles/filedetails/?id=2924729055)

## Debugging
If the mods aren't doing what your expecting you can get more information by enabling debugging.
For that you 
```
-logfile debuglog.txt -scriptlogfiles
```
to the program startup parameters. You can do that in steam in the game settings, which you can open via the context menu.
After that, it will output general logging information to
```
C:\Users\{YOUR USER NAME}\Documents\Egosoft\X4\{PROFILE NUMBER}\
```
There will be the debuglog.txt, which will contain general information about mod errors. This is probably not where you first look.
There will also be a logs/RandomMine and/or logs/RandomSuppy directory, which will contain logging information per ship.
There you can see, which buy / sell orders the ship saw and accepted or ignored.
