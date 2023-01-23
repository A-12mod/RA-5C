self_ID = "VSN_MirageIII"
declare_plugin(self_ID,
{
image     	 = "FC3.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("VSN_MirageIII"),
developerName = _("VSN"),

fileMenuName = _("VSN_MirageIII"),
update_id        = "VSN_MirageIII",
version		 = "2.5.6",
state		 = "installed",
info		 = _("VSN_MirageIIIC und S."),

encyclopedia_path = current_mod_path .. "/Encyclopedia",

Skins	=
	{
		{
		    name	= _("VSN_MirageIII"),
			dir		= "Theme"
		},
	},
Missions =
	{
		{
			name		    = _("VSN_MirageIII"),
			dir			    = "Missions",
  		},
	},
LogBook =
	{
		{
			name		= _("VSN_MirageIIIS"),
			type		= "VSN_MirageIIIS",
		},
		{
			name		= _("VSN_MirageIIIC"),
			type		= "VSN_MirageIIIC",
		},
		{
			name		= _("VSN_MirageIIIC_AG"),
			type		= "VSN_MirageIIIC_AG",
		},
	},	
		
InputProfiles =
	{
		["VSN_MirageIIIS"] = current_mod_path .. '/Input/VSN_MirageIIIS',
		["VSN_MirageIIIC"] = current_mod_path .. '/Input/VSN_MirageIIIC',
		["VSN_MirageIIIC_AG"] = current_mod_path .. '/Input/VSN_MirageIIIC_AG',
	},
})
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/VSN_MirageIII")
mount_vfs_texture_path  (current_mod_path.."/Textures/DEVRiM_DCS_SU-27_EnglishGrayCockpitMod")
----------------------------------------------------------------------------------------
dofile(current_mod_path.."/LUA/Views_SU27Pit.lua")
make_view_settings('VSN_MirageIIIS', ViewSettings, SnapViews)
make_flyable('VSN_MirageIIIS',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old = 3}, current_mod_path..'/comm.lua')--SFM
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/LUA/Views_SU27Pit.lua")
make_view_settings('VSN_MirageIIIC', ViewSettings, SnapViews)
make_flyable('VSN_MirageIIIC',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old = 3}, current_mod_path..'/comm.lua')--SFM
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/LUA/Views_SU27Pit.lua")
make_view_settings('VSN_MirageIIIC_AG', ViewSettings, SnapViews)
make_flyable('VSN_MirageIIIC_AG',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old = 54}, current_mod_path..'/comm.lua')--SFM
-------------------------------------------------------------------------------------
dofile(current_mod_path..'/VSN_MirageIIIC.lua')
dofile(current_mod_path..'/VSN_MirageIIIC_AG.lua')
dofile(current_mod_path..'/VSN_MirageIIIS.lua')
-------------------------------------------------------------------------------------
plugin_done()
