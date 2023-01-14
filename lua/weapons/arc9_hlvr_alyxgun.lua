AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Half-Life: Alyx"

SWEP.TrueName = "Para-Ordnance P14-45"
SWEP.PrintName = "Le Clarion C1191"

SWEP.Class = "Handgun"
SWEP.Trivia = {
    ["Country of Origin"] = "France",
    ["Caliber"] = ".45 ACP",
    ["Weight (Loaded)"] = "1.1kg",
    ["Projectile Weight"] = "14.9 Grams",
    ["Muzzle Velocity"] = "1150 Feet/Second",
    ["Muzzle Energy"] = "483 Joules"
}

SWEP.Credits = {
    Author = "Matsilagi, GaussTheWizard, Kattmynta",
    Assets = "Valve"
}


if ARC9:UseTrueNames() then

SWEP.Description = [[The P14-45 is essential a clone of the famous M1911A1. It has double the ammo capacity of the original M1911A1. This pistol is also well known as a 14-shot M1911. Early Para Ordnance pistols were almost exact copies of the M1911A1. However over time design of these pistols evolved and several new features were added.]]

SWEP.PrintName = SWEP.TrueName

else

SWEP.Description = [[Standard .45 ACP pistol given by Russel to a younger Alyx from a different timeline. Works like any other gun in this side of reality, but has its own few quirks to learn. It's also much more modular than the one given to her by Eli in our current timeline.]]

end

SWEP.ViewModel = "models/weapons/hlvr/c_alyxgun.mdl"
SWEP.WorldModel = "models/weapons/hlvr/c_alyxgun.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/hlvr/c_alyxgun.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-15, 4.5, 0),
    Ang = Angle(0, 0, 180),
    Scale = 1
}

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 38 -- Damage done at point blank range
SWEP.DamageMin = 17 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 10 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 80 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 3 -- Units of wood that can be penetrated by this gun.

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1380 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 10 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.ShootWhileSprint = true

-------------------------- FIREMODES

SWEP.RPM = 300

-- Works different to ArcCW

-- -1: Automatic
-- 0: Safe. Don't use this for safety.
-- 1: Semi.
-- 2: Two-round burst.
-- 3: Three-round burst.
-- n: n-round burst.
SWEP.Firemodes = {
    {
        Mode = 1,
        -- add other attachment modifiers
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.25

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.75 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.75 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

-- Procdeural visual recoil values
SWEP.UseVisualRecoil = false

SWEP.PhysicalVisualRecoil = false

SWEP.VisualRecoilUp = 4 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilSide = 1 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 15 -- Roll tilt for visual recoil.
SWEP.VisualRecoilPunch = 1

SWEP.VisualRecoil = 2.5
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPositionBump = 0.75

SWEP.VisualRecoilDampingConst = 40
SWEP.VisualRecoilSpringMagnitude = 1

SWEP.VisualRecoilCenter = Vector(0, 0, 0)

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.0002 -- Applied per unit of recoil.

-------------------------- HANDLING

SWEP.FreeAimRadius = 7.5 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 1 -- How much the gun sways.

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.15
SWEP.SwayMultCrouch = 0.66
SWEP.SwayMultShooting = 1.2

SWEP.FreeAimRadiusSights = 0

SWEP.SwayMultSights = 0.15

SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.99
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 50
SWEP.BashLungeRange = 128
SWEP.BashRange = 64
SWEP.PreBashTime = 0.25
SWEP.PostBashTime = 0.5

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.17, 0, 1.74),
    Ang = Angle(0, 0, 5.206),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    Magnification = 1,
}

SWEP.ViewModelFOVBase = 60

SWEP.SprintAng = Angle(0, -10, -15)
SWEP.SprintPos = Vector(-2, -3, 0)

SWEP.ActivePos = Vector(0, 3, 1)
SWEP.ActiveAng = Angle(0, 0, -5)

SWEP.CrouchPos = Vector(-2, 0, 0)
SWEP.CrouchAng = Angle(0, 0, -8)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(17, 25, 3)
SWEP.CustomizeSnapshotFOV = 70
SWEP.CustomizeNoRotate = true

-------------------------- HoldTypes

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "revolver"
SWEP.HoldTypeHolstered = "revolver"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "revolver"
SWEP.HoldTypeBlindfire = "revolver"
SWEP.HoldTypeNPC = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_1"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/weapons/hlvr/pistol_case.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

local common = ")^/arccw_uc/common/"
local path = ")^weapons/arccw_alyx/pistol/"

SWEP.ShootSound = {
    path .. "fire_01.ogg",
    path .. "fire_02.ogg",
    path .. "fire_03.ogg",
    path .. "fire_04.ogg",
}

SWEP.ShootSoundSilenced = "weapons/usp/usp1.wav"

SWEP.DryFireSound = {
    path .. "dryfire.ogg",
}

SWEP.FiremodeSound = "arc9/firemode.wav"

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

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
}

SWEP.Attachments = {
}