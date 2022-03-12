att.PrintName = "Holo-Sight"
att.Icon = Material("entities/acwatt_ahololens.png")
att.Description = "Fancy Holographic-projection sights."

att.SortOrder = 3

att.Desc_Pros = {
    "Highlights targets",
}
att.Desc_Cons = {
}

att.Slot = "matsi_alyxgun_iron"

att.Model = "models/weapons/hlvr/c_alyxgun_stencil.mdl"

att.ModelOffset = Vector(0, 0, 0)

att.AdditionalSights = {
    {
        Pos = Vector(0, 14, -2.9),
        Ang = Angle(0, 180, 0),
        Magnification = 1.1,
        -- ScrollFunc = ArcCW.SCROLL_ZOOM,
        -- ZoomLevels = 4,
        -- Thermal = true,
        -- ThermalScopeColor = Color(255, 255, 255),
        -- ThermalHighlightColor = Color(255, 255, 255),
        -- ThermalScopeSimple = false,
        -- ThermalNoCC = true,
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png")
att.HolosightNoFlare = true
att.HolosightSize = 1
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/hlvr/c_alyxgun_hsp.mdl"

att.HolosightMagnification = 1.1
att.HolosightBlackbox = false

att.HolosightConstDist = 42

att.HolosightMagnificationMin = 1.1
att.HolosightMagnificationMax = 3

att.Mult_SightTime = 1.4