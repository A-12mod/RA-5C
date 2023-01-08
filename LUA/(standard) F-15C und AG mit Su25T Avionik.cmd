@echo off
rem
copy LUA\entry-15-AG25.lua entry.lua
rem  Input VSN_MirageIIIC
copy LUA\02-15-default.lua Input\VSN_MirageIIIC\joystick\default.lua
copy LUA\03-15-default.lua Input\VSN_MirageIIIC\keyboard\default.lua
rem  Input VSN_MirageIIIC_AG
copy LUA\02-25-default.lua Input\VSN_MirageIIIC_AG\joystick\default.lua
copy LUA\03-25-default.lua Input\VSN_MirageIIIC_AG\keyboard\default.lua
rem  Input VSN_MirageIIIS
copy LUA\02-15-default.lua Input\VSN_MirageIIIS\joystick\default.lua
copy LUA\03-15-default.lua Input\VSN_MirageIIIS\keyboard\default.lua
rem  Spiegel
copy LUA\description-15.lua Liveries\Cockpit_VSN_MirageIIIC\default\description.lua
copy LUA\description-27.lua Liveries\Cockpit_VSN_MirageIIIC_AG\default\description.lua
copy LUA\description-15.lua Liveries\Cockpit_VSN_MirageIIIS\default\description.lua
rem  Cockpit
copy LUA\15-Cockpit.lods Shapes\Cockpit_VSN_MirageIIIC.lods
copy LUA\15-cockpit.json Shapes\Cockpit_VSN_MirageIIIC.edm.json
copy LUA\27-Cockpit.lods Shapes\Cockpit_VSN_MirageIIIC_AG.lods
copy LUA\27-cockpit.json Shapes\Cockpit_VSN_MirageIIIC_AG.edm.json
copy LUA\15-Cockpit.lods Shapes\Cockpit_VSN_MirageIIIS.lods
copy LUA\15-cockpit.json Shapes\Cockpit_VSN_MirageIIIS.edm.json
rem
echo.
echo.
echo.
echo.
echo --------------  F-15C und Su-25T Avionic und Cockpit aktiviert  ----------------
echo.
echo.
echo.
echo.
rem  pause>nul
timeout 3