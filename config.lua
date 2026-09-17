Config = {}

-- ===========================
-- TACTICAL LEAN SETTINGS
-- ===========================
Config.Lean = {
    TPV = {
        lateralOffsetClose = 0.50,
        lateralOffsetMedium = 0.65,
        lateralOffsetFar = 0.75,
        extraRightOffset = 0.45,
        verticalOffset = 0.55,
        cameraRoll = 10.0,
    },
    -- Animation Dictionaries
    Anims = {
        LEFT = {
            high = { dict = "anim@tactical_highlow_high_leftlean", clip = "high_leftlean_clip" },
            low = { dict = "anim@tactical_highlow_low_leftlean", clip = "low_leftlean_clip" }
        },
        RIGHT = {
            high = { dict = "anim@highlow_high_lean", clip = "high_lean_clip" },
            low = { dict = "anim@highlow_low_lean", clip = "low_lean_clip" }
        }
    },

    LKey = 'Q',
    RKey = 'E',
}

-- ===========================
-- QUICK THROW SETTINGS
-- ===========================
Config.QuickThrow = {
    Enabled = true,
    Cooldown = 1500, -- Cooldown between throws in ms
    Key = 'G',
    RemoveOnEmpty = true, -- Automatically remove weapon from ped when ammo reaches 0
    DefaultSpeed = 35.0,  -- Default throw velocity if weapon is not explicitly listed below

    -- Known Throwables configuration (custom speed and labels)
    Throwables = {
        { hash = `WEAPON_GRENADE`,      speed = 35.0, label = "Grenade" },
        { hash = `WEAPON_MOLOTOV`,      speed = 30.0, label = "Molotov" },
        { hash = `WEAPON_SMOKEGRENADE`, speed = 35.0, label = "Smoke Grenade" },
        { hash = `WEAPON_BZGAS`,        speed = 35.0, label = "BZ Gas" },
        { hash = `WEAPON_STICKYBOMB`,   speed = 25.0, label = "Sticky Bomb" },
        { hash = `WEAPON_PIPEBOMB`,     speed = 25.0, label = "Pipe Bomb" },
        { hash = `WEAPON_FLARE`,        speed = 40.0, label = "Flare" },
        { hash = `WEAPON_BALL`,         speed = 30.0, label = "Ball" },
        { hash = `WEAPON_SNOWBALL`,     speed = 30.0, label = "Snowball" },

        -- Addon Weapon Support (Uncomment or add custom addons as needed)
        { hash = `WEAPON_FLASHBANG`,    speed = 35.0, label = "Flashbang" },
        { hash = `WEAPON_SMOK2GRENADE`, speed = 35.0, label = "Smoke Grenade" },
    }
}

-- ===========================
-- NOTIFICATION LOCALES
-- ===========================
Config.Locales = {
    no_throwable = "No throwable weapons available!",
    cannot_throw = "Cannot throw right now!"
}
