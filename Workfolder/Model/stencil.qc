// Created by Crowbar 0.68

$modelname "weapons/hlvr/c_alyxgun_stencil.mdl"

$bodygroup "body"
{
	studio "stencil-1.smd"
}

$bodygroup "hsp"
{
	studio "stencil_hsp.smd"
	blank
}

$definebone "holosight" "" 0 0 0 0 0 0 0 0 0 0 0 0

$attachment "holosight" "holosight" 0.00 0.00 0.00 rotate 0 -90 0

$cdmaterials "Optica\HLVR\AlyxGun\"

$sequence "Idle" {
	"stencil.smd"
}