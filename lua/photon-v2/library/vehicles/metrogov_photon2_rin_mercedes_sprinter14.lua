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
		Category = "Dash Light",
		Options = {
            {
				Option = "Federal Signal X-stream",
				Components = {
					{
						Component = "photon_fedsig_xstream_duo",
						Position = Vector( 0, 101.3, 68  ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						States = {
							[1] = "A",
							[2] = "A",
						},
						BodyGroups = {
							["shroud"] = 0,
							["mount"] = 0,
						},
						Segments = {
							LightDash = {
								Frames = {
									[1] = "1",
									[2] = "2",
								},
								Sequences = {
									["STAGE3"] = sequence():QuadFlash( 2, 1 ):SetTiming( 1/20 ),
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {LightDash = "STAGE3"},
							},
						},
						Bones = {
							["suction_mount"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 15 ), 1 },
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},
		}
	},
	{
		Category = "Grille Lights",
		Options = {
			{
				Option = "Whelen TIR3",
				Components = {
					{
						Name = "@grille_tir3",
						Component = "anemolis_whelen_tir3",
						Position = Vector( 10, 143, 41.2 ),
						Angles = Angle( 0, -7.5, -2 ),
						Scale = 1,
						States = { "A" },
						Segments = {
							whelen_tir3_grille = {
								Frames = {
									[1] = "1"
								},
								Sequences = {
									["STAGE3"] = sequence():QuadFlash( 1, 0 ):SetTiming( 1/20 ),
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									whelen_tir3_grille = "STAGE3"
								}
							},
						}
					},
					{
						Inherit = "@grille_tir3",
						Position = Vector( -10, 143, 41.2 ),
						Angles = Angle( 0, 7.5, -2 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									whelen_tir3_grille = "STAGE3:180"
								}
							},
						}
					},
				}
			}
		}
	},
	{
		Category = "Rear Lights",
		Options = {
			{
				Option = "Whelen TIR3",
				Components = {
					{
						Inherit = "@grille_tir3",
						Position = Vector( -18, -103.1, 97.5 ),
						Angles = Angle( 0, 173.5, 5 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									whelen_tir3_grille = "STAGE3:180"
								}
							},
						}
					},
					{
						Inherit = "@grille_tir3",
						Position = Vector( 18, -103.1, 97.5 ),
						Angles = Angle( 0, 186.5, 5 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									whelen_tir3_grille = "STAGE3"
								}
							},
						}
					},
				}
			}
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