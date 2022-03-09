att.PrintName = "Burst Fire Slide"
att.Description = [[Enables the use of an accelerated three-round burst firemode.]]
att.Desc_Pros = {
    "800 RPM in Burst mode"
}

att.Slot = "matsi_alyxgun_slide"

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = -3,
        Mult_RPM = 800/500,
        RunawayBurst = true,
    },
    {
        Mode = 0
    }
}