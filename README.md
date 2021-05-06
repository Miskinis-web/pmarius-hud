# pmarius-hud

Simple fivem hud.

# My Discord
https://discord.gg/TYeJ88x3Pk

# Images
![unknown](https://user-images.githubusercontent.com/65214664/117261198-8cf2a780-ae58-11eb-9037-5a65e0a3150e.png)

# Installation
Open esx_status/client/main.lua and replace line 71 with the New Line below.
  TriggerEvent('esx_status:onTick', GetStatusData(true))
 Replace to:
  TriggerEvent('esx_statushud:onTick', GetStatusData(true))
  
After that open esx_basicneeds/client/main.lua and change values of lines 43 and 49 to false.
  return true
Replace to:
  return false
