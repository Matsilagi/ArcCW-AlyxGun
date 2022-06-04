$modelname "Weapons/HLVR/c_AlyxGun.mdl"
 
$bodygroup "base"
{
	studio "vr_alyxgun_AlyxGun_base.smd"
}
$bodygroup "frame"
{
	studio "vr_alyxgun_AlyxGun_frame.smd"
	studio "vr_alyxgun_AlyxGun_frame_mod.smd"
}
$bodygroup "slide"
{
	studio "vr_alyxgun_AlyxGun_slide.smd"
	studio "vr_alyxgun_AlyxGun_slide_mod.smd"
}
$bodygroup "clip"
{
	studio "vr_alyxgun_AlyxGun_clip.smd"
}
$bodygroup "holder"
{
	blank
	studio "vr_alyxgun_AlyxGun_holder.smd"
}
$bodygroup "decor"
{
	blank
	studio "vr_alyxgun_AlyxGun_decor.smd"
}
$bodygroup "laser"
{
	blank
	studio "vr_alyxgun_AlyxGun_laser.smd"
}
$bodygroup "sight"
{
	blank
	studio "vr_alyxgun_AlyxGun_sight.smd"
}
$bodygroup "hopper"
{
	blank
	studio "vr_alyxgun_AlyxGun_hopper.smd"
}
$bodygroup "reservoir"
{
	studio "ammo_full.smd"
	studio "ammo_9.smd"
	studio "ammo_8.smd"
	studio "ammo_7.smd"
	studio "ammo_6.smd"
	studio "ammo_5.smd"
	studio "ammo_4.smd"
	studio "ammo_3.smd"
	studio "ammo_2.smd"
	studio "ammo_1.smd"
	blank
}


$cdmaterials "models\weapons\arccw\shared"
$cdmaterials "Optica\HLVR\AlyxGun\"

$texturegroup "skinfamilies"
{
 { "vr_alyxgun_base" "vr_alyxgun_grip"}
 { "vr_alyxgun_base" "vr_alyxgun_grip_skin01"}
 { "vr_alyxgun_base_skin01" "vr_alyxgun_grip"}
 { "vr_alyxgun_base_skin01" "vr_alyxgun_grip_skin01"}
}


$attachment "1" "vm_barrel" 0.00 5.00 0.00 rotate -0 90 0
$attachment "2" "vm_pivot" -0.20 1.80 1.50 rotate -0 145 -90
$attachment "3" "vm_pivot" -0.00 -0.45 6.25 rotate -90 0 0
$attachment "5" "camera" 0 0 0 rotate -90 0 0
 
$surfaceprop "default"
 
$contents "solid"
 
$illumposition 0 0 0

$bbox 0 0 0 0 0 0
 
$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "idle"{
	"anims\vm_m1911_idle.smd" 
	// "anims\idle_iron.smd"
	fps 30
	"ACT_VM_IDLE" 1
 	// blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "idle_empty"{
	"anims\vm_m1911_idle_empty.smd" 
	// "anims\idle_iron_empty.smd"
	fps 30
	"ACT_VM_IDLE" 1
 	// blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "fire" {
	"anims\vm_m1911_fire.smd"
	"anims\vm_m1911_fire_ads.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.02
	fadeout 0.0
	{ event 5001 0 "1" }
}

$sequence "fire_empty" {
	"anims\vm_m1911_fire_empty.smd"
	// "anims\fire_iron_empty.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
 	// blend "sights" 0 1
	fadein 0.02
	fadeout 0.0
	{ event 5001 0 "1" }
}

// $sequence "ready" {
// 	"anims\ready.smd"
// 	"anims\ready_iron.smd"
//  	blend "sights" 0 1
// 	fps 60
// 	"ACT_VM_DRAW" 1
// 	snap
// }

$sequence "reload" {
	"anims\vm_m1911_reload_tactical.smd"
	// "anims\reload_iron.smd"
	// blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	fadein 0
	fadeout 0.08
}

$sequence "reload_empty" {
	"anims\vm_m1911_reload_empty.smd"
	// "anims\reload_empty_iron.smd"
	// blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	fadein 0
	fadeout 0.08
}


$sequence "reload_ext" {
	"anims\vm_m1911_reload_tactical_xmags.smd"
	// "anims\reload_iron.smd"
	// blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "reload_empty_ext" {
	"anims\vm_m1911_reload_empty_xmags.smd"
	// "anims\reload_empty_iron.smd"
	// blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "enter_inspect" {
	"anims\vm_m1911_inspect.smd"
	"ACT_VM_IDLE" 1
	frame 0 30
	fadein 0
	fadeout 0.2
	fps 32
}

$sequence "idle_inspect" {
	"anims\vm_m1911_inspect.smd"
	"ACT_VM_IDLE" 1
	frame 30 30
	fps 30
}

$sequence "exit_inspect" {
	"anims\vm_m1911_inspect.smd"
	"ACT_VM_IDLE" 1
	frame 31 120
	fadein 0.2
	fadeout 0
	fps 32
}

$sequence "enter_inspect_empty" {
	"anims\vm_m1911_inspect_empty.smd"
	"ACT_VM_IDLE" 1
	frame 0 30
	fadein 0
	fadeout 0.2
	fps 30
}

$sequence "idle_inspect_empty" {
	"anims\vm_m1911_inspect_empty.smd"
	"ACT_VM_IDLE" 1
	frame 30 30
	snap
	fps 30
}

$sequence "exit_inspect_empty" {
	"anims\vm_m1911_inspect_empty.smd"
	"ACT_VM_IDLE" 1
	frame 31 120
	fadein 0.2
	fadeout 0
	fps 32
}

// $include "wbtrfix2.qci"            idk how to make it work

$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "holosight"