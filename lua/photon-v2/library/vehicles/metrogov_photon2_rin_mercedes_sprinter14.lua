if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2014 Mercedes Sprinter Metro Governemnt"
VEHICLE.Vehicle		= "sm14_sprinterswb_lhd"
VEHICLE.Category 	= "Photon 2: Lake Rin Metro. Gov."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Department of Waterworks",
				SubMaterials = {
					{ Id = 20, Material = "rin/metro_gov/sprinter14/water" },
				},
                BodyGroups = {
					{ BodyGroup = "windows", Value = 0 },
                    { BodyGroup = "bumpers", Value = 1 },
				},
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
						Position = Vector( 12, 143, 41.3 ),
						Angles = Angle( -0.5, -8, 0 ),
						Scale = 0.95,
						SubMaterials = {
							[5] = "sentry/props/koitoflasher/glass_amber"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -12, 143, 41.3 ),
						Angles = Angle( 0.5, 8, 0 ),
						Scale = 0.95,
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
						Position = Vector( -17.2, -104.8, 28.5 ),
						Angles = Angle( -7, 267, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/metro_gov/props/plate_municipal",
						},
					},
                    {
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 146, 25.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 146.7, 25.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/metro_gov/props/plate_municipal",
						},
					},
				}
			}
		}
	},
}