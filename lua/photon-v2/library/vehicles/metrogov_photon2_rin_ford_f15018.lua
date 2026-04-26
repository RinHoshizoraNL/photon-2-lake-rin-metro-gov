if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2018 Ford F150 LR Metro Governemnt"
VEHICLE.Vehicle		= "sm18frdf150supercab"
VEHICLE.Category 	= "Photon 2: Lake Rin Metro. Gov."
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Municipal Services",
				SubMaterials = {
					{ Id = 0, Material = "rin/metro_gov/f150/government" }
				},
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 0 },
					{ BodyGroup = "grille", Value = 2 },
					{ BodyGroup = "front bumper", Value = 5 },
					{ BodyGroup = "rear bumper", Value = 2 },
                    { BodyGroup = "door handles", Value = 2 },
					{ BodyGroup = "mirrors", Value = 2 },
					{ BodyGroup = "interior trim", Value = 1 },
                    { BodyGroup = "bed", Value = 2 },
					{ BodyGroup = "towbar", Value = 1 },
				},
			},
			{
				Option = "Parks Department",
				SubMaterials = {
					{ Id = 0, Material = "rin/metro_gov/f150/park" }
				},
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 0 },
					{ BodyGroup = "grille", Value = 2 },
					{ BodyGroup = "front bumper", Value = 5 },
					{ BodyGroup = "rear bumper", Value = 2 },
                    { BodyGroup = "door handles", Value = 2 },
					{ BodyGroup = "mirrors", Value = 2 },
					{ BodyGroup = "interior trim", Value = 1 },
                    { BodyGroup = "bed", Value = 0 },
					{ BodyGroup = "towbar", Value = 1 },
				},
				Props = {
					{
						Model = "models/anemolis/props/anemolis_f150toolbox.mdl",
						Position = Vector( 0, -40, 67.4 ),
						Angles = Angle( -0.5, -90, 0 ),
						Scale = 1
					},
					{
						Model = "models/anemolis/props/f150_brushguard/anemolis_f150_brushguard.mdl",
						Position = Vector( 0, 133, 42 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					},
				}
			},
			{
				Option = "Department Of Waterworks",
				SubMaterials = {
					{ Id = 0, Material = "rin/metro_gov/f150/water" }
				},
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 0 },
					{ BodyGroup = "grille", Value = 2 },
					{ BodyGroup = "front bumper", Value = 5 },
					{ BodyGroup = "rear bumper", Value = 2 },
                    { BodyGroup = "door handles", Value = 2 },
					{ BodyGroup = "mirrors", Value = 2 },
					{ BodyGroup = "interior trim", Value = 1 },
                    { BodyGroup = "bed", Value = 2 },
					{ BodyGroup = "towbar", Value = 1 },
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
                        Position = Vector( 0, 15, 93.5 ),
                        Angles = Angle( -3, -90, 0 ),
                        Scale = 1.2,
						States = {
							[1] = "A",
							[2] = "A",
							[3] = "A",
							[4] = "A",
						},
                        Options = {
                            FeetWidthOffset = 0.5,
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
				Option = "Grille",
				Components = {
				    {
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 14, 131, 44.45 ),
						Angles = Angle( -0.5, -8, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/props/koitoflasher/glass_amber"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -14, 131, 44.45 ),
						Angles = Angle( 0.5, 8, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/props/koitoflasher/glass_amber"
						},
					},
				}
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
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -131.2, 34 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/metro_gov/props/plate_municipal",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 134, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 134.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/metro_gov/props/plate_municipal",
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -5, 92.3),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					},
				}
			}
		}
	},
}