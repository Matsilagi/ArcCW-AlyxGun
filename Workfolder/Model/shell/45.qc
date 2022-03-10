$modelname "Weapons/HLVR/Pistol_case.mdl"
$scale 2.5


$bodygroup "reference"
{
	studio "pistol_case.smd"
}

$bbox -0.18 -0.222 -0.217 1.873 0.222 0.217

$definebone "_556_mesh" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0

$cdmaterials "Optica\HLVR\AlyxGun\"

$sequence "reference" {
	"pistol_case.smd"
	fps 30
}
