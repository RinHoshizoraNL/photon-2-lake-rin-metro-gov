if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Westward Go-4 Interceptor LR Metro Governemnt"
VEHICLE.Vehicle		= "go4_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Metro. Gov."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Parks Department",
				SubMaterials = {
					{ Id = 14, Material = "rin/metro_gov/go4/park" }
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Beacon",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( 0, -10, 79.9 ),
						Angles = Angle( -2, 270, 0 ),
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
			}
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Props = {
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -27, 81.1),
						Angles = Angle( 0, 0, -2 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -15, 18, 42 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -81, 25.5 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/metro_gov/props/plate_municipal",
						},
					},
				}
			}
		}
	},
}