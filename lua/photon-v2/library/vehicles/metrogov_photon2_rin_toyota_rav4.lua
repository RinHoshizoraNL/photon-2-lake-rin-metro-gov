if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2019 Toyota Rav4 LR Metro Governemnt"
VEHICLE.Vehicle		= "dannio_2019_toyota_rav4"
VEHICLE.Category 	= "Photon 2: Lake Rin Metro. Gov."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
    [2] = "sentry/shared/env_cubemap_model",
	[5] = "rin/metro_gov/rav4/rim_black",
	[12] = "sentry/shared/glass",
	[16] = "sentry/shared/glass",
}

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			{
				Option = "Municipal Services",
				SubMaterials = {
					{ Id = 11, Material = "rin/metro_gov/rav4/government" },
				},
			},
            {
				Option = "Parks Department",
				SubMaterials = {
					{ Id = 11, Material = "rin/metro_gov/rav4/park" },
				},
			},
		}
	},
    {
		Category = "Lightbar",
		Options = {
            {
				Option = "Patlite AXS-12",
				Components = {
					{
                        Component = "patlite_axs12",
                        Position = Vector( 0, -10, 80.5 ),
                        Angles = Angle( -3, -90, 0 ),
                        Scale = 1.1,
						States = {
							[1] = "A",
							[2] = "A",
							[3] = "A",
							[4] = "A",
						},
                        Options = {
                            FeetWidthOffset = 0,
                            FeetTilt = -2,
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
		Category = "Grille",
		Options = {
            {
				Option = "Patlite LP5",  
				Components = {
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 11.5, 108, 36.2 ),
						Angles = Angle( 0, -2, 0 ),
						Scale = 0.7,
						SubMaterials = {
							[5] = "sentry/props/koitoflasher/glass_amber"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -11, 108, 36.2 ),
						Angles = Angle( 0, 2, 0 ),
						Scale = 0.7,
						SubMaterials = {
							[5] = "sentry/props/koitoflasher/glass_amber"
						},
					},
				},
			},
		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 26, 40.1 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -32, 79.7),
						Angles = Angle( 0, 0, -0.5 ),
						Scale = 1
					},
                    {
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0.5, -105.5, 45 ),
						Angles = Angle( -10, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/metro_gov/props/plate_municipal",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0.5, 109.5, 24.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0.5, 110.2, 24.5 ),
						Angles = Angle( 0, 90, 0 ),
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