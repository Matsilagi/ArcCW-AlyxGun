// Created by Crowbar 0.71

$modelname "weapons/hlvr/c_alyxgun_hsp.mdl"

$bodygroup "body"
{
	studio "vr_alyxgun_AlyxGun_sight_HSP2.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "Optica\HLVR\AlyxGun\"

$attachment "holosight" "holosight" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

/* $bbox -1.044 -1.472 -0.527 1.759 1.472 2.489 */

/* $definebone "root" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "holosight" "root" 0 1.423388 -0.048433 0 -0.000057 89.999982 0 0 0 0 0 0
$definebone "blender_implicit" "" 0 0 0 0 0 0 0 0 0 0 0 0 */


$sequence "idle" {
	"vr_alyxgun_AlyxGun_sight_HSP2.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "vr_alyxgun_AlyxGun_sight_HSP2.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
