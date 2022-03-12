SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Half-Life: Alyx"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/weapons/hlvr/pistol_case.mdl"
SWEP.ShellScale = 1
SWEP.ShellMaterial = "optica/HLVR/alyxgun/pistol_case"
SWEP.ShellPitch = 90
SWEP.ShellSounds = ArcCW.PistolShellSoundsTable

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 5
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "Le Clarion C1191"

-- True name --

SWEP.TrueName = "Para-Ordnance P14-45"

-- Trivia --

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = [[Standard .45 ACP pistol given by Russel to a younger Alyx from a different timeline. Works like any other gun in this side of reality, but has its own few quirks to learn. It's also much more modular than the one given to her by Eli in our current timeline.]]
SWEP.Trivia_Manufacturer = "Le Clarion"
SWEP.Trivia_Calibre = ".45 ACP"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "France"
SWEP.Trivia_Year = "20XX"

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Para USA"
	SWEP.Trivia_Country = "USA"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/hlvr/c_alyxgun.mdl"
SWEP.WorldModel = "models/weapons/hlvr/c_alyxgun.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.DefaultBodygroups = "0000000000"

-- Damage --

SWEP.Damage = 38 -- 3 shot short range kill
SWEP.DamageMin = 17 -- 6 shot long range kill
SWEP.RangeMin = 10
SWEP.Range = 80 -- 3 shot until ~40m
SWEP.Penetration = 1.5
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 315
SWEP.PhysBulletMuzzleVelocity = 315

SWEP.BodyDamageMults = ArcCW.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 10

-- Recoil --

SWEP.Recoil = 1.25
SWEP.RecoilSide = 0.75

SWEP.RecoilRise = 0.25
SWEP.VisualRecoilMult = 1.0
SWEP.MaxRecoilBlowback = .5
SWEP.MaxRecoilPunch = .8

SWEP.Sway = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 500
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120 

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 7
SWEP.HipDispersion = 500
SWEP.MoveDispersion = 250
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "glock"

SWEP.HeatCapacity = 50
SWEP.HeatDissipation = 20
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMean = 150

-- Speed multipliers --

SWEP.SpeedMult = 0.975
SWEP.SightedSpeedMult = 0.9
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 1

-- Length --

SWEP.BarrelLength = 8
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(-0.5, -2, -1)
SWEP.HolsterAng = Angle(3.5, 7, -20)

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.LaserIronsAngle = Angle(0,1.25,0)

SWEP.IronSightStruct = { -- Needs to be adjusted, aiming too far left
     Pos = Vector(-2.31, 3.769, 1.478),
     Ang = Angle(0.421, -0.007, 5.206),
     Magnification = 1,
     ViewModelFOV = 55,
    --  SwitchToSound = ratel, -- sound that plays when switching to this sight
    --  SwitchFromSound = ratel
}

SWEP.ActivePos = Vector(0, 3, 1)
SWEP.ActiveAng = Angle(0, 0, -5)

SWEP.CustomizePos = Vector(7, -2, -2)
SWEP.CustomizeAng = Angle(15, 25, 0)

SWEP.CrouchPos = Vector(-2, 0, 0)
SWEP.CrouchAng = Angle(0, 0, -8)

SWEP.BarrelOffsetHip = Vector(3.5, 0, -3)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-10.5, 3.5, -5.25),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Firing sounds --

-- UC firing soudns are temporary
local path = ")^weapons/arccw_alyx/pistol/"
local path1 = ")^weapons/arccw_ud/uzi/"
local common = ")^/arccw_uc/common/"
SWEP.ShootSound = {path .. "fire_01.ogg",path .. "fire_02.ogg",path .. "fire_03.ogg",path .. "fire_04.ogg"}
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DistantShootSound = {path .. "fire-dist-01.ogg", path .. "fire-dist-02.ogg", path .. "fire-dist-03.ogg", path .. "fire-dist-04.ogg", path .. "fire-dist-05.ogg", path .. "fire-dist-06.ogg"} -- Maybe Not Placeholder
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"
SWEP.ShootDrySound = path .. "dryfire.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [2] = "glock_bullet1"
}

SWEP.AttachmentElements = {
    ["matsi_alyxgun_reservoir"] = {
        VMBodygroups = {
			{ind = 8, bg = 1}
		}
    },
	["matsi_alyxgun_frontshroud"] = {
		VMBodygroups = {{ind = 5, bg = 1}},
	},
    ["matsi_alyxgun_burst"] = {
        VMBodygroups = {
			{ind = 2, bg = 1},
			{ind = 4, bg = 1}
		},
        Override_IronSightStruct = {
            Pos = Vector(-2.27, 3.769, 1.09),
            Ang = Angle(1.500, -0.008, 5.205),
        }
    },
	["matsi_alyxgun_laser"] = {
		VMBodygroups = {
			{ind = 1, bg = 1},
			{ind = 6, bg = 1}
		}
	},
	["matsi_alyxgun_iron"] = {
		VMBodygroups = {
			{ind = 7, bg = 1}
		},
	},
	["masti_alyxgun_skin_silver_wood"] = {
        VMSkin = 1,
    },
	["masti_alyxgun_skin_black_white"] = {
        VMSkin = 2,
    },
	["masti_alyxgun_skin_black"] = {
        VMSkin = 3,
    },
}

SWEP.Hook_NameChange = function(wep,name)
    
end

SWEP.Hook_ModifyBodygroups = function(wep,data)
    local vm = data.vm
    local atts = wep.Attachments

    if atts[2].Installed or atts[5].Installed then
        vm:SetBodygroup(3,1)
    else
        vm:SetBodygroup(3,0)
    end

    if atts[5].Installed then
        if wep:Clip1() > 1 then
            vm:SetBodygroup(9,math.Clamp(10 - wep:Clip1() + (wep.TickCount or 0),0,9))
        else
            vm:SetBodygroup(9,10)
        end
    else
        vm:SetBodygroup(9,10)
    end
end

-- Animations --

SWEP.Hook_Think = ArcCW.ADSReload

-- CHAN_ITEM doesn't sound too right
local ci = CHAN_AUTO
local ratel = {path .. "pistol_rattle_1.ogg", path .. "pistol_rattle_2.ogg", path .. "pistol_rattle_3.ogg"}
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["draw_empty"] = {
        Source = "draw_empty",
    },
    ["enter_inspect"] = {
        Source = "enter_inspect",
        Time = 30 / 32,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        SoundTable = {
        },
    },
	["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        Time = 30 / 32,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        SoundTable = {
        },
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        Time = 1/32,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
	["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        Time = 89 / 32,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
    },
	["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        Time = 89 / 32,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
    },
    ["fire"] = {
        Source = "fire",
        Time = 30 / 30,
        ShellEjectAt = 0.02,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 24 / 30,
        ShellEjectAt = 0.02,
        SoundTable = {{s = path .. "slidelock.ogg", t = 1/30, c = ci},},
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		MinProgress = 1.3525,
        Time = 65 / 30,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.62,
        SoundTable = {
            {s = path .. "magout.ogg", t = 20/30, c = ci},
            {s = path .. "magin.ogg", t = 37/30, c = ci},
			{s = path .. "slideclose.ogg", t = 42/30, c = ci}
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 75 / 30,
        MinProgress = 1.75,
        LastClip1OutTime = 0.76,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.55,
        LHIKOut = 0.7,
        SoundTable = {
            {s = path .. "magout.ogg",    t = 14/30, c = ci},
            {s = path .. "magin.ogg",         t = 45/30, c = ci},
            {s = path .. "slideclose.ogg",      t = 55/30, c = ci},
        },
    },
}

SWEP.AutosolveSourceSeq = "idle"

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"matsi_alyxgun_iron"},
		Bone = "tag_weapon",
		RequireFlags = {"front_shroud"},
		Offset = {
			vang = Angle(0,-90,0)
		},
    },
    {
        PrintName = "Slide",
        DefaultAttName = "Standard Slide",
        DefaultAttIcon = Material("entities/att/acwatt_ud_glock_frame.png", "smooth mips"),
        Slot = "matsi_alyxgun_slide",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "matsi_alyxgun_muzzle",
    },
    {
        PrintName = "Tactical",
        Slot = {"matsi_alyxgun_tactical"},
		RequireFlags = {"front_shroud"},
		Bone = "vm_pivot", --"tag_weapon"
        Offset = {
			vpos = Vector(-0, 0.37, 5.65), --Vector(0, 5.715, -0.35),
			vang = Angle(-90,90,0) --Angle(0,-90,0)
		},
    },
    {
        PrintName = "Magazine",
        Slot = {"matsi_alyxgun_mag"},
        Bone = "glock_parent",
        Offset = {
            vpos = Vector(0, -1.3, 5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skin",
        Slot = {"matsi_alyxgun_skin"},
        FreeSlot = true
    },
}