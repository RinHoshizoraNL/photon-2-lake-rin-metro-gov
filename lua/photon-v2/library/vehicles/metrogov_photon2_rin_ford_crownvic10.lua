if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2010 Ford Crown Victoria LR Metro Governemnt"
VEHICLE.Vehicle		= "cvpi_hd_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Metro. Gov."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Municipal Services",
				SubMaterials = {
					{ Id = 3, Material = "rin/metro_gov/crownvic10/government" }
				},
				BodyGroups = {
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "hubcaps", Value = 0 },
					{ BodyGroup = "doortrim", Value = 5 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "rims", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "keypad", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 1 },
					{ BodyGroup = "bumperr_chrome", Value = 1 },
				},
			},
		}
	},
	{
		Category = "Lighting",
		Options = {
            {
				Option = "Beacon Dash",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( -9.5, 27, 47.5 ),
						Angles = Angle( 2, 150, 5 ),
						Scale = .9,
						States = {
							[1] = "A",
							[2] = "A",
							[3] = "A",
							[4] = "A",
						},
						BodyGroups = {
							["trim"] = 1,
						},
						SubMaterials = {
							[5] = "sentry/props/koitoflasher/glass_amber",
							[6] = "sentry/props/koitoflasher/glass_amber"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
			{
				Option = "Beacon Left",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( -22, -12, 66.3 ),
						Angles = Angle( -2, 270, 8 ),
						Scale = .9,
						States = {
							[1] = "A",
							[2] = "A",
							[3] = "A",
							[4] = "A",
						},
						BodyGroups = {
							["trim"] = 1,
						},
						SubMaterials = {
							[5] = "sentry/props/koitoflasher/glass_amber",
							[6] = "sentry/props/koitoflasher/glass_amber"
						},
					},
				}
			},
			{
				Option = "Beacon Right",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( 22, -12, 66.3 ),
						Angles = Angle( -2, 270, -8 ),
						Scale = .9,
						States = {
							[1] = "A",
							[2] = "A",
							[3] = "A",
							[4] = "A",
						},
						BodyGroups = {
							["trim"] = 1,
						},
						SubMaterials = {
							[5] = "sentry/props/koitoflasher/glass_amber",
							[6] = "sentry/props/koitoflasher/glass_amber"
						},
					},
				}
			},
			{
				Option = "Beacon Center",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( 0, -10, 67.6 ),
						Angles = Angle( -2.5, 270, 0 ),
						Scale = .9,
						States = {
							[1] = "A",
							[2] = "A",
							[3] = "A",
							[4] = "A",
						},
						BodyGroups = {
							["trim"] = 1,
						},
						SubMaterials = {
							[5] = "sentry/props/koitoflasher/glass_amber",
							[6] = "sentry/props/koitoflasher/glass_amber"
						},
					},
				}
			},
			{
				Option = "Lightbar",
				Components = {
					{
                        Component = "patlite_axs12",
                        Position = Vector( 0, -17, 69.5 ),
                        Angles = Angle( -1, -90, 0 ),
                        Scale = 1.1,
						States = {
							[1] = "A",
							[2] = "A",
							[3] = "A",
							[4] = "A",
						},
                        Options = {
                            FeetWidthOffset = 1,
                            FeetTilt = -4,
                        },
						SubMaterials = {
							[12] = "sentry/props/koitoflasher/glass_amber"
						},
                    },
				}
			},
		}
	},
	{
		Category = "Rain Guards",
		Options = {
			{
				Option = "Rain Guards",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 1 },
				},
			},
			{
				Option = "None",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 0 },
				},
			},
		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "rearfascia", Value = 1 },
					{ BodyGroup = "door_l_notch", Value = 1 },
					{ BodyGroup = "door_r_notch", Value = 1 },
					{ BodyGroup = "console", Value = 1 },
				},
				Props = {
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 25, 49.4 ),
						Angles = Angle( -4, 270, -3 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -40, 68.3),
						Angles = Angle( 0, 0, 2.5 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -124.55, 36.2 ),
						Angles = Angle( -11, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/metro_gov/props/plate_municipal",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/metro_gov/props/plate_municipal",
						},
					},
				}
			}
		}
	},
}