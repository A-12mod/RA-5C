
local fuselageLeft	= {
	{ CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" ,arg_increment = 0, attach_point_position = {0, 0 ,0 } }, --AIM_54
	{ CLSID = "{AIM_54C_Mk47}" , attach_point_position = {0, 0 ,0 } },
	{ CLSID = "{AIM_54A_Mk47}" , attach_point_position = {0, 0 ,0 } },
}
local fuselageRight	= {
	{ CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" ,arg_increment = 0, attach_point_position = {0, 0 ,0 } }, --AIM_54
	{ CLSID = "{AIM_54C_Mk47}" , attach_point_position = {0, 0 ,0 } },
	{ CLSID = "{AIM_54A_Mk47}" , attach_point_position = {0, 0 ,0 } },
}
local centerline 	= {
	{ CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" ,arg_increment = 0, attach_point_position = {0, 0 ,0 } }, --AIM_54
	{ CLSID = "{AIM_54C_Mk47}" , attach_point_position = {0, 0 ,0 } },
	{ CLSID = "{AIM_54A_Mk47}" , attach_point_position = {0, 0 ,0 } },
}
local Smoke 	= {
	{ CLSID = "{INV-SMOKE-RED}" ,attach_point_position = {-2, 0 ,0 }},		--Smoke Generator - red
	{ CLSID = "{INV-SMOKE-GREEN}" ,attach_point_position = {-2, 0 ,0 }},	--Smoke Generator - green
	{ CLSID = "{INV-SMOKE-BLUE}" ,attach_point_position = {-2, 0 ,0 }},		--Smoke Generator - blue
	{ CLSID = "{INV-SMOKE-WHITE}" ,attach_point_position = {-2, 0 ,0 }},	--Smoke Generator - white
	{ CLSID = "{INV-SMOKE-YELLOW}" ,attach_point_position = {-2, 0 ,0 }},	--Smoke Generator - yellow
	{ CLSID = "{INV-SMOKE-ORANGE}" ,attach_point_position = {-2, 0 ,0 }},	--Smoke Generator - orange
}
local Lehr 	= {
	--
}

local SENSOR_RADAR = {
	
	["AN/APD-7"] = 
		{
			type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-45.0, 45.0}
            },
            centered_scan_volume =
            {
                azimuth_sector = 30.0,
                elevation_sector = 30.0
            },
            max_measuring_distance = 255000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 100500.0,
                    [ASPECT_TAIL_ON] = 65500.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 90500.0,
                    [ASPECT_TAIL_ON] = 44500.0
                }
            },			
            lock_on_distance_coeff = 0.72,
			TWS_max_targets = 2,
            velocity_limits =
            {
                radial_velocity_min = 100.0 / 3.6,
                relative_radial_velocity_min = 100.0 / 3.6,
            },
            scan_period = 5.0,
        },
}

						
RA-5C =  {
      
		Name 			= 'RA-5C',--AG
		DisplayName		= _('RA-5C Vigilante'),--AG
        Picture 		= "RA-5C.png",
        Rate 			= "50",
        Shape			= "RA-5C",--AG	
        WorldID			=  WSTYPE_PLACEHOLDER, 
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'RA-5C';--AG
			life  	 	= 25; -- lifebar
			vis   	 	= 2; -- visibility gain.
			desrt    	= 'RA-5C-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'RA-5C';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "RA-5C-oblomok";
			file  		= "RA-5C-oblomok";
			fire  		= { 240, 2};
		},
	},
	
	net_animation ={--Beschreibung der externen Animation 32 Animationen begrenzen
        --0, -- front gear
		2,  -- nose wheel steering
        --3, -- right gear
        --5, -- left gear
        --9, -- right flap
        --10, -- left flap
        	11, -- right aileron
        	12, -- left aileron
		--13, -- right slat
		--14, -- left slat
        	15, -- right elevator
        	16, -- left elevator
        	17, -- rudder
        --21, -- SFM air brake
        --25, -- tail hook
		28, -- nachbrenner
		29, -- nachbrenner
		35, --	brakeshute
		36, --	brakeshute
		37, --	brakeshute
        --38, -- canopy
		89, -- Triebwerk
		90, -- Triebwerk
		--182, -- air brake
        --190, -- left (red) navigation wing-tip light
        --191, -- right (green) navigation wing-tip light
        --192, -- tail (white) light
        --198, -- anticollision (flashing red) top light
        --199, -- anticollision (flashing red) bottom light
        --208, -- taxi light (white) right main gear door
		--209, -- taxi light (white) right main gear door
    },	
	
	LandRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of LandRWCategories
        TakeOffRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of TakeOffRWCategories
	
	mapclasskey 		= "P0091000024",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Fighters", "Refuelable", "Datalink", "Link16"},
	Categories= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},

    --CanopyGeometry 	=	makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_AVERAGE), --F14/AV8B
	--CanopyGeometry	=	makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_GOOD), --F16/FA18
	--CanopyGeometry	=	makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_AVERAGE, LOOK_AVERAGE),--Su34
	--CanopyGeometry 	=	makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_BAD), --F5

		M_empty						=	27604,	-- kg YF-12A; with pilot and nose load, F15
		M_nominal					=	56200,	-- kg YF-12A; (Empty Plus Full Internal Fuel)
		M_max						=	63504,	-- kg YF-12A;(Maximum Take Off Weight)
		M_fuel_max					=	35900,	-- kg YF-12A;(Internal Fuel Only)
		H_max						=	26000,	-- m  YF-12A;(Maximum Operational Ceiling)
		average_fuel_consumption	=	0.675,  -- YF-12A; educated guess
		CAS_min						=	87,		-- YF-12A;Minimum CAS speed (m/s) (for AI)
		V_opt						=	250,	-- YF-12A;Cruise speed (m/s) (for AI)
		V_take_off					=	88,		-- Take off speed in m/s (for AI)
		V_land						=	85,		-- Land speed in m/s (for AI)
		has_afteburner				=	true,
		has_speedbrake				=	true,
		radar_can_see_ground		=	true,

		nose_gear_pos 				                = {10.41,	-1.941,	0},   -- nosegear coord 
	    nose_gear_amortizer_direct_stroke   		=  0,      -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  -0.24,  -- up 
	    nose_gear_amortizer_normal_weight_stroke 	=  -0.12,   -- up 
	    nose_gear_wheel_diameter 	                =  0.57, -- in m
	
	    main_gear_pos 						 	    = {-0.800,	-1.941,	2.393}, -- main gear coords 
	    main_gear_amortizer_direct_stroke	 	    =   0,     --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =   -0.180, --  up 
	    main_gear_amortizer_normal_weight_stroke    =   -0.090,-- down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.72, -- in m

		AOA_take_off				=	0.14,	-- YF-12A;AoA in take off (for AI)
		stores_number				=	11,		-- YF-12A
		bank_angle_max				=	60,		-- YF-12A;Max bank angle (for AI)
		Ny_min						=	-3,		-- YF-12A;Min G (for AI)
		Ny_max						=	6,		-- YF-12A;Max G (for AI)
		V_max_sea_level				=	233,	-- YF-12A;Max speed at sea level in m/s (for AI)
		V_max_h						=	957.38,	-- YF-12A;Max speed at max altitude in m/s (for AI)
		wing_area					=	167,	-- YF-12A;wing area in m2
		thrust_sum_max				=	18558,	-- YF-12A;thrust in kgf (64.3 kN)
		thrust_sum_ab				=	28552,	-- YF-12A;thrust in kgf (95.1 kN)
		Vy_max						=	120,	-- YF-12A;Max climb speed in m/s (for AI)
		flaps_maneuver				=	0,		-- YF-12A
		Mach_max					=	3.35,	-- YF-12A;Max speed in Mach (for AI)
		range						=	4800,	-- YF-12A;Max range in km (for AI)
		RCS							=	1.0,		-- YF-12A;Radar Cross Section m2
		Ny_max_e					=	6,		-- Max G (for AI)
		detection_range_max			=	255,	--testen//Für AN/APG-63 265
		IR_emission_coeff			=	0.85,	-- YF-12A;Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
		IR_emission_coeff_ab		=	6,		-- YF-12A;With afterburner
		tand_gear_max				=	3.73,   --XX  1.732 FA18 3.73, weiß ich leider nicht :-( 
		tanker_type					=	1,      --YF-12A;F14=2/S33=4/ M29=0/S27=0/F15=1/ F16=1/To=0/F18=2/A10A=1/ M29K=4/F4=0/
		wing_span					=	16.95,	--YF-12A;  wing spain in m
		wing_type 					= 	0,		-- 0=FIXED_WING/ 1=VARIABLE_GEOMETRY/ 2=FOLDED_WING/ 3=ARIABLE_GEOMETRY_FOLDED
		length						=	30.97,  -- YF-12A
		height						=	5.64,   -- YF-12A 
		engines_count				=	2, --XX
		wing_tip_pos 				= 	{-3.404,	-0.164,	4.05},
		
		--EPLRS 						= true,--?
		TACAN_AA					= true,--?
		mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 8.08},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.743},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
				--{Transition = {"Any", "Bailout"}, Sequence = {{C = {{"PosType", 8}, {"Sleep", "for", 2.0}}}, {C = {{"JettisonCanopy", 0}}}}},
            },
			Door1 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 8.08},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.743},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 1},},},},},
            },
			--Door1 = {DuplicateOf = "Door0"},
            CrewLadder = {
                {Transition = {"Dismantle", "Erect"}, Sequence = {{C = {{"Arg", 91, "to", -0.9, "in", 1.5}}}, {C = {{"Sleep", "for", 5.0}}}}, Flags = {"Reversible"}},
                {Transition = {"Erect", "Dismantle"}, Sequence = {{C = {{"Arg", 91, "to", 0.0, "in", 2.7}}}, {C = {{"Sleep", "for", 0.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
            },
        },
		
		engines_nozzles = 
		{
			[1] = 
			{
				engine_number		= 	1,
				pos     			= {-6.67, 0.051, 1.414},
				elevation     		= 0,
				diameter			=	1.55, -- AFB cone diameter   Kreis Ø
				exhaust_length_ab	=	15.875, -- lenght in m  Kreis Ø kegel efekt
				exhaust_length_ab_K = 0.75,
				smokiness_level     = 0.08,
				afterburner_circles_count = 11, --0
				afterburner_circles_pos = {0.2, 0.8},
				afterburner_circles_scale = 1.0, -- Kreisgrösse
				afterburner_effect_texture = "afterburner_YF12A",
			}, -- end of [1]
			[2] = 
			{
				engine_number		= 	2,
				pos     			= {-6.67, 0.051, -1.414},
				elevation     		= 0,
				diameter			=	1.55,
				exhaust_length_ab	=	15.875,
				exhaust_length_ab_K = 0.75,
				smokiness_level     = 0.08,
				afterburner_circles_count = 11,
				afterburner_circles_pos = {0.2, 0.8},
				afterburner_circles_scale = 1.0,
				afterburner_effect_texture = "afterburner_YF12A",
			}, -- end of [2]
		}, -- end of engines_nozzles

		crew_size	 = 2,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	= 58,--
				drop_canopy_name	= "vsn_RA-5C-fonar1",
				pilot_name			= 19,
				pos 				= {14.961,0.634,0},
				canopy_pos   		= {14.000,0.680,0},
				ejection_added_speed = {-3,15,-3}, --pilot to the left
				ejection_order    	= 2,
				canopy_arg          = 38,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	= 58,--
				drop_canopy_name	= "vsn_RA-5C-fonar2",
				pilot_name			= 19,
				pos 				= {13.533,0.634,0},
				canopy_pos   		= {12.800,0.680,0},
				ejection_added_speed = {-3,15,3}, -- RIO to the right
				ejection_order    	= 1,
				canopy_arg          = 38,
			}, -- end of [2]
		}, -- end of crew_members

		brakeshute_name	=	3,--Mig29=3/Su27=4/
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{9.703,	0.822,	0},
		fires_pos = 
		{
			[1] = 	{-0.707,	0.553,	-0.213},-- Fuselage -- TODO evaluate - Made Dragon
			[2] = 	{-0.037,	0.285,	1.391},-- Wing R In
			[3] = 	{-0.037,	0.285,	-1.391},-- Wing L In
			[4] = 	{-0.82,	0.265,	2.774},-- Wing R Mid
			[5] = 	{-0.82,	0.265,	-2.774},-- Wing L Mid
			[6] = 	{-0.82,	0.255,	4.274},-- Wing R Out
			[7] = 	{-0.82,	0.255,	-4.274},-- Wing L Out
			[8] = 	{-5.003,	0.261,	0},-- Engine R In -- TODO evaluate - Made Dragon
			[9] = 	{-5.003,	0.261,	0},-- Engine L In -- TODO evaluate - Made Dragon
			[10] = 	{-0.707,	0.453,	1.036},-- Engine R Out
			[11] = 	{-0.707,	0.453,	-1.036},-- Engine L Out
		}, -- end of fires_pos
		
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/RA-5C_overwingVapor.lua"},
		},
		
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	1,	0},--0,	1,	0  vorne
				pos = 	{-2.776,	-1.0,	-0.422},---5.776,	1.4,	-0.422
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	1,	0},--0,	1,	0
     			pos = 	{-2.776,	-1.0,	0.422},---5.776,	1.4,	0.422
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser

        -- Countermeasures
passivCounterm 		= {
CMDS_Edit 			= true,
SingleChargeTotal 	= 180,
chaff 				= {default = 90, increment = 45, chargeSz = 1},
flare 				= {default = 45, increment = 45, chargeSz = 2}
 },

        CanopyGeometry 	= {
            azimuth 	= {-145.0, 145.0},-- pilot view horizontal (AI)
            elevation 	= {-50.0, 90.0}-- pilot view vertical (AI)
        },
	
Sensors = {
RADAR 			= "AN/APD-7", --"AN/APG-63" --"AN/APD-7"----RA-5C
RWR 			  = "Abstract RWR"--F15
},
Countermeasures = {
ECM 			= "AN/ALQ-135"--F15
},
	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	HumanRadio = {
		frequency 		= 127.5,  -- Radio Freq
		editable 		= true,
		minFrequency	= 100.000,
		maxFrequency 	= 156.000,
		modulation 		= MODULATION_AM
	},

--[[
Guns =  {
          gun_mount("BK_27", { count = 125 },{muzzle_pos = {5.834, -0.609, -0.646}}), 
          gun_mount("BK_27", { count = 125 },{muzzle_pos = {5.834, -0.609,  0.646}})
		}, -- 2 × 30-mm-Revolverkanone GIAT DEFA 552 mit je 125 Schuss
--]]

	Pylons =     {
		
		pylon(1, 0, 0, 0, 0,
			{
				DisplayName = " ",
  				use_full_connector_position = true,
				connector = "Pylon3",
			},
			Lehr
		),
		pylon(2, 0, 0, 0, 0,
			{
				DisplayName = " ",
  				use_full_connector_position = true,
				connector = "Pylon3",
			},
			Lehr
		),
		pylon(3, 0, 0, 0, 0,
			{
				DisplayName = " ",
  				use_full_connector_position = true,
				connector = "Pylon3",
			},
			Lehr
		),
        pylon(4, 2, 0, 0, 0,
			{
				DisplayName = "Smoke",
  				use_full_connector_position = true,
				connector = "Pylon1",
			},
			Smoke
		),
        pylon(5, 1, 0, 0, 0,
			{
				DisplayName = "2",
				use_full_connector_position = true,
				connector = "Pylon2",
			},
			fuselageLeft
		),
        pylon(6, 1, 0, 0, 0,
			{
				DisplayName = "3",
				use_full_connector_position = true,
				connector = "Pylon3",
			},
			centerline
		),
        pylon(7, 1, 0, 0, 0,
            {
				DisplayName = "4",
            	use_full_connector_position = true,
				connector = "Pylon4",
			},
			fuselageRight
		),
		pylon(8, 2, 0, 0, 0,
            {
				DisplayName = "Smoke",
            	use_full_connector_position = true,
				connector = "Pylon5",
			},
			Smoke
		),
		pylon(9, 0, 0, 0, 0,
			{
				DisplayName = " ",
  				use_full_connector_position = true,
				connector = "Pylon3",
			},
			Lehr
		),
		pylon(10, 0, 0, 0, 0,
			{
				DisplayName = " ",
  				use_full_connector_position = true,
				connector = "Pylon3",
			},
			Lehr
		),
		pylon(11, 0, 0, 0, 0,
			{
				DisplayName = " ",
  				use_full_connector_position = true,
				connector = "Pylon3",
			},
			Lehr
		),
},
	
	Tasks = {
      	aircraft_task(CAS),
		aircraft_task(Pinpoint Strike),
		aircraft_task(Reconnaissance),
     	aircraft_task(CAS),
    },	
	DefaultTask = aircraft_task(Pinpoint Strike),

	SFM_Data = {
	aerodynamics = --RA-5C
		{
			Cy0	     =	0,
			Mzalfa	 =	6.6, --geändert YF12 EB//von 5 auf 4 auf 6.6 (Tornado)
			Mzalfadt =	1.0,--geändert YF12 EB// von 0.8 auf 0.6 auf 1.0
			kjx 	 =  1.78, --geändert YF12 EB
			kjz = 0.00125,
			Czbe = -0.005, --geändert YF12 EB //von -0.012
			cx_gear = 0.0412,--geändert YF12 EB
			cx_flap = 0.0,--na 
			cy_flap = 0.0,--na
			cx_brk = 0.035,--na
			table_data = 
			{--          EB          YF-12      YF-12       EB/C      EB      YF-12   EB/YF-12
			--      M	 Cx0		 Cya		 B		 	B4	    Omxmax	Aldop	Cymax
				{0.0,	0.0185,		0.068,		0.224,		0,		0.250,	20.0,	0.52 	},
				{0.2,	0.0185,		0.067,		0.224,		0,		1.250,	20.0,	0.63    },
				{0.4,	0.0185,		0.065,		0.224,	   	0,		1.450,	22.0,	1.01    },
				{0.6,	0.0211,		0.061,		0.224,		0,		1.850,	25.0,	1.37    },
				{0.7,	0.0245,		0.060,		0.224,		0,		1.900,	25.0,	1.35    },
				{0.8,	0.0294,		0.061,		0.224,		0,		2.100,	24.0,	1.32    },
				{0.9,	0.0345,		0.061,		0.224,		0,		2.150,	23.0,	1.26    },
				{1.0,	0.0398,		0.068,		0.225,		0,		2.100,	20.0,	1.22    },
				{1.05,  0.0455,     0.068,      0.226,		0,   	1.910,  21.0,   1.29    },
				{1.1,	0.0482,		0.065,	   	0.226,		0,		1.910,	21.0,	1.23    },
				{1.2,	0.0493,		0.064,	   	0.226,		0,		1.910,	20.0,	1.15 	},		
				{1.3,	0.0495,		0.064,	   	0.227,		0,		1.910,	19.0,	1.09 	},				
				{1.4,	0.0481,		0.061,	   	0.228,		0,		1.910,	18.0,	0.99 	},					
				{1.6,	0.0462,		0.060,	   	0.228,		0,		1.900,	17.0,	0.92 	},					
				{1.8,	0.0438,		0.059,	   	0.219,		0,		1.850,	15.0,	0.80 	},		
				{2.0,   0.0411,     0.050,      0.205,      0,   	1.750,  14.0,   0.63    },
				{2.2,	0.0405,		0.046,	   	0.190,		0,		1.750,	14.0,	0.58 	},					
				{2.4,   0.0381,     0.040,      0.180,      0,   	1.450,  14.0,   0.50    },
				{2.6,	0.0356,		0.035,		0.171,		0,		1.250,	12.0,	0.38 	},		
				{2.8,   0.0305,     0.034,      0.141,      0,   	1.200,  12.0,   0.37    },
				{3.0,   0.0267,     0.031,      0.120,      0,   	1.010,  11.0,   0.31    },
				{3.1,   0.0255,     0.031,      0.111,      0,   	0.850,  10.0,   0.28    },
				{3.2,   0.0265,     0.030,      0.100,      0,   	0.785,  10.0,   0.27    },
				{3.3,   0.0300,     0.028,      0.080,      0,   	0.745,  09.0,   0.23    },
				{3.4,   0.0366,     0.028,      0.550,      0,   	0.715,  09.0,   0.23    },
				{3.6,   0.0489,     0.027,      1.556,      0,   	0.695,  09.0,   0.22    },
				{3.9,	0.0655,		0.027,		2.005,	    0,		0.655,	08.0,	0.19	},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg		=	67.5, --Idle Drehzahl des Triebwerks
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			type	=	"TurboJet",
			hMaxEng	=	28.9, --geändert YF12 //Maximalhöhe für Triebwerk in km
			dcx_eng	=	0.010,--geändeert YF12 EB// Engine Drag//von 0.0122
			cemax	=	1.15,-- Milpower TSFC J58= (80,07 kN * 54 g/kN/s) / 1000 = 4.32kg/s (for one engine)/ Range-extension/ Range-more-extension
			cefor	=	1.95,-- AB-Power TSFC J58= (113,43 kN * 54 g/kN/s) / 1000 = 6.12kg/s (for one engine)/Range-Extension/moreRangeExtension
			dpdh_m	=	3000,--testen// Verschlechterungswert für MilPower bei größerer Höhe 
			dpdh_f	=	350,--testen// Verschlechterungswert für AB-Power und größerer Höhe/von 400
			table_data = {
			--   M		Pmax		 Pfor
				{0.0,	182000,		283575},--YF12 REAL Engine muss nach bei Flugtest angepasst werden...
				{0.2,	189952,		322000},--YF12 EB
				{0.4,	196654,		355200},--YF 12 EB
				{0.6,	206114,		375889},--YF-12 EB
				{0.7,	212211,		387505},--YF-12 EB
				{0.8,	219225,		392500},--YF-12 EB
				{0.9,	224556,		415905},--YF-12 EB
				{1.0,	229554,		450025},--YF-12 EB
				{1.1,	229554,		495520},--YF-12 EB
				{1.2,	227541,		536623},--YF-12 EB
				{1.3,	220154,		556223},--YF-12 EB
				{1.4,	215441,		585561},--YF-12 EB
				{1.6,	211225,		602552},--YF-12 EB
				{1.8,	200115,		641222},--YF-12 EB
				{2.0,   195441,		675220},--eingetragen
				{2.2,	189774,		700000},--YF-12 EB
				{2.5,	182112,		720115},--YF-12 EB
				{2.8,   176554,     729955},--YF-12 EB
				{3.0,   169885,     730112},--YF-12 EB
				{3.2,   164221,     721145},--YF-12 EB 755 KN :-)
				{3.3,   159441,     695544},--YF-12 EB
				{3.4,   153221,     554220},--YF-12 EB
				{3.6,   148445,     458220},--YF-12 EB
				{3.9,	139551,		305221},--YF-12 EB
			}, -- end of table_data
		}, -- end of engine
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},--NOSE_CENTER
	[1]  = {critical_damage = 3,  args = {296}},--NOSE_LEFT_SIDE
	[2]  = {critical_damage = 3,  args = {297}},--NOSE_RIGHT_SIDE
	[3]  = {critical_damage = 8,  args = {65}}, --CABINA
	[4]  = {critical_damage = 2,  args = {298}},--CABIN_LEFT_SIDE
	[5]  = {critical_damage = 2,  args = {301}},--CABIN_RIGHT_SIDE
	[7]  = {critical_damage = 2,  args = {249}},--GUN
	[8]  = {critical_damage = 3,  args = {265}},--FRONT_GEAR_BOX
	[9]  = {critical_damage = 3,  args = {154}},--FUSELAGE_LEFT_SIDE
	[10] = {critical_damage = 3,  args = {153}},--FUSELAGE_RIGHT_SIDE
	[11] = {critical_damage = 1,  args = {167}},--ENGINE_L_IN
	[12] = {critical_damage = 1,  args = {161}},--ENGINE_R_IN
	[13] = {critical_damage = 2,  args = {169}},--MTG_L_BOTTOM
	[14] = {critical_damage = 2,  args = {163}},--MTG_R_BOTTOM
	[15] = {critical_damage = 2,  args = {267}},--LEFT_GEAR_BOX
	[16] = {critical_damage = 2,  args = {266}},--RIGHT_GEAR_BOX
	[17] = {critical_damage = 2,  args = {168}},--MTG_L  (ENGINE)
	[18] = {critical_damage = 2,  args = {162}},--MTG_R  (ENGINE)
	[20] = {critical_damage = 2,  args = {183}},--AIR_BRAKE_R
	[23] = {critical_damage = 5,  args = {223}},--WING_L_OUT
	[24] = {critical_damage = 5,  args = {213}},--WING_R_OUT
	[25] = {critical_damage = 2,  args = {226}},--ELERON_L
	[26] = {critical_damage = 2,  args = {216}},--ELERON_R
	[29] = {critical_damage = 5,  args = {224}, deps_cells = {23, 25}},--WING_L_CENTER
	[30] = {critical_damage = 5,  args = {214}, deps_cells = {24, 26}},--WING_R_CENTER
	[35] = {critical_damage = 6,  args = {225}, deps_cells = {23, 29, 25, 37}},--WING_L_IN
	[36] = {critical_damage = 6,  args = {215}, deps_cells = {24, 30, 26, 38}},--WING_R_IN
	[37] = {critical_damage = 2,  args = {228}},--FLAP_L
	[38] = {critical_damage = 2,  args = {218}},--FLAP_R
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}},--FIN_L_TOP
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}},--FIN_R_TOP
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},--FIN_L_BOTTOM
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}},--FIN_R_BOTTOM
	[51] = {critical_damage = 2,  args = {240}},--ELEVATOR_L
	[52] = {critical_damage = 2,  args = {238}},--ELEVATOR_R
	[53] = {critical_damage = 2,  args = {248}},--RUDDER_L
	[54] = {critical_damage = 2,  args = {247}},--RUDDER_R
	[56] = {critical_damage = 2,  args = {158}},--TAIL_LEFT_SIDE
	[57] = {critical_damage = 2,  args = {157}},--TAIL_RIGHT_SIDE
	[59] = {critical_damage = 3,  args = {148}},--NOSE_BOTTOM
	[61] = {critical_damage = 2,  args = {147}},--FUEL_TANK_F
	[82] = {critical_damage = 2,  args = {152}},--FUSELAGE_BOTTOM
	},
	
	DamageParts = 
	{  
		[1] = "VSN_YF12A-oblomok-wing-r", -- wing R
		[2] = "VSN_YF12A-oblomok-wing-l", -- wing L
	},
-- VSN DCS World\Scripts\Aircrafts\_Common\Lights.lua

	lights_data = {
		typename = "collection",
		lights = {
			-- STROBES
			[WOLALIGHT_STROBES] = { 
					typename = "collection",
					lights = {	
						{
                            typename = "argnatostrobelight", argument = 193,
                            controller = "Strobe", mode = 1, power_up_t = 0.0, cool_down_t = 0.0, period = 1.3, reduced_flash_time = 0.45, phase_shift = 0.0,
                        },
						{
                            typename = "argnatostrobelight", argument = 194,
                            controller = "Strobe", mode = 1, power_up_t = 0.0, cool_down_t = 0.0, period = 1.3, reduced_flash_time = 0.45, phase_shift = 0.5,
                        },
						
						{
                            typename = "argnatostrobelight", argument = 190,
                            controller = "Strobe", mode = 1, power_up_t = 0.5, cool_down_t = 0.5, period = 1.2, reduced_flash_time = 0.45, phase_shift = 0.0,
                        },
						{
                            typename = "argnatostrobelight", argument = 191,
                            controller = "Strobe", mode = 1, power_up_t = 0.5, cool_down_t = 0.5, period = 1.2, reduced_flash_time = 0.45, phase_shift = 0.0,
                        },--Mode 0 ?
					}
			},
			-- SPOTS
			[WOLALIGHT_LANDING_LIGHTS] = { 
					typename = "collection",
					lights = {
						{ typename  = "argumentlight",	argument  = 208,},
					},
			},
			[WOLALIGHT_TAXI_LIGHTS] = { 
					typename = "collection",
					lights = {
						{ typename  = "argumentlight",	argument  = 209,},
					},
			},
			-- NAVLIGHTS
			[WOLALIGHT_NAVLIGHTS]	= {	
					typename = "collection", -- nav_lights_default
					lights = {
						{typename = "argumentlight",argument = 190}, -- Left Position(red)
						--{typename = "argumentlight",argument = 191}, -- Right Position(green)
						--{typename = "argumentlight",argument = 193}, -- Tail Position white)
					},
			},
			-- FORMATION
	[WOLALIGHT_FORMATION_LIGHTS] = {},--formation_lights_tail_1 = 200;
	[WOLALIGHT_REFUEL_LIGHTS]	= {},-- REFUEL
	[WOLALIGHT_BEACONS]	= {},-- STROBE / ANTI-COLLISION
	[WOLALIGHT_CABIN_NIGHT]	= {},--
	}},
}

add_aircraft(VSN_YF12A) --AG
