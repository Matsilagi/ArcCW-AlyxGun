// Created by Crowbar 0.68

$modelname "weapons/hlvr/c_alyxgun_hsp.mdl"

$bodygroup "Body"
{
	studio "c_alyxgun_hsp.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -0.059 0 -0.413

$cdmaterials "Optica\HLVR\AlyxGun\"

$cbox 0 0 0 0 0 0

$bbox -6.212 -6.091 -6.534 6.212 5.973 5.708

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "holosight" "" 0 0 0 0 0 0 0 0 0 0 0 0

$attachment "holosight" "holosight" 0.00 0.00 0.00 rotate 0 -90 0


$sequence "Idle" {
	"c_alyxgun_hsp.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}