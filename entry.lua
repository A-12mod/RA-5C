self_ID = "RA-5C"
declare_plugin(self_ID,
{
image     	 = "FC3.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("RA-5C"),
developerName = _("VSN"),

fileMenuName = _("RA-5C"),
update_id        = "RA-5C",
version		 = "2.7.5",
state		 = "installed",
info		 = _("Originally designed as a Mach 2 all-weather bomber capable of delivering nuclear weapons, the A3J Vigilante was eventually modified into a high-speed reconnaissance aircraft after the Navy's strategic bombing mission was assumed by nuclear submarines. The resulting RA-5C Vigilante incorporated sophisticated electronic equipment in its bomb-bay that included side-looking airborne radar and passive electronic countermeasures, along with vertical, oblique and split-image cameras. Eighteen RA-5Cs were lost to enemy fire during the Vietnam War, the highest loss rate of any Navy aircraft during the war, a testament to the dangers of pre and post-strike reconnaissance missions.."),

--encyclopedia_path = current_mod_path .. "/Encyclopedia",

Skins	=
	{
		{
		    name	= _("RA-5C"),
			dir		= "Theme"
		},
	},
Missions =
	{
		{
			name		    = _("RA-5C"),
			dir			    = "Missions",
  		},
	},
LogBook =
	{
		{
			name		= _("RA-5C"),
			type		= "RA-5C",
		},
	},	
		
InputProfiles =
	{
		["RA-5C"] = current_mod_path .. '/Input/VSN_YF12A',
	},
})
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/VSN_YF12A")
----------------------------------------------------------------------------------------
dofile(current_mod_path.."/LUA/Views_F15Pit.lua")
make_view_settings('RA-5C', ViewSettings, SnapViews)
make_flyable('RA-5C',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old = 6}, current_mod_path..'/comm.lua')--SFM
-------------------------------------------------------------------------------------
dofile(current_mod_path..'/RA-5C.lua')
-------------------------------------------------------------------------------------
plugin_done()
