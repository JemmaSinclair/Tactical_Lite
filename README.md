# Tactical Lite 🛡️💣

**Tactical Lite** is a lightweight, framework-standalone resource that adds high-quality **Tactical Leaning (Q/E)** and a **Quick Throw (G)** system to your FiveM server.

It is designed to be purely mechanical and performance-friendly (0.00ms idle), focusing solely on movement and utility without interfering with your existing weapon or recoil scripts. It does not require QBCore, ESX, or custom inventory scripts.

## ✨ Features

### 📐 Tactical Leaning (Q / E)
- **Third Person View (TPV) Optimized:** Camera transitions are smooth and calculated based on camera distance (Lerp).
- **State Synced:** Fully synced with OneSync (uses State Bags).
- **Dynamic Stance:** Supports both standing and crouching lean animations.
- **Collision Check:** Prevents camera clipping through walls when leaning.
- **FPS Safe:** Leaning is automatically disabled in First Person View to prevent visual bugs.

### 💣 Quick Throw (G)
- **Base Game Weapon Wheel Integration:** Uses whichever throwable is currently on quick select in your weapon wheel (Grenade, Molotov, Smoke, Sticky Bomb, etc.).
- **Strict Weapon Wheel Ammo Count:** Strictly checks and decrements native GTA V weapon wheel ammo.
- **Auto-Cleanup Option:** Automatically removes the weapon from the ped's wheel when ammo reaches 0 (`RemoveOnEmpty`).
- **Visual Feedback:** Plays a specialized throwing animation while keeping the crosshair active.
- **Cooldown System:** Prevents grenade spamming.

## 📦 Dependencies

- [ox_lib](https://github.com/overextended/ox_lib)

*(No framework dependencies: works standalone without QBCore, ESX, or ox_inventory)*

## 🛠️ Installation

1. **Download** the resource and place it in your `resources` folder.
2. **Animation Files:** All required `.ycd` animation files are **already included** in the `stream` folder. No extra downloads required.
3. Add `ensure Tactical_Lite` to your `server.cfg`.
4. Configure settings in `config.lua` if needed.

## ⚙️ Configuration

You can adjust camera offsets, cooldowns, custom speeds, and throwable items in `config.lua`:

```lua
Config.QuickThrow = {
    Enabled = true,
    Cooldown = 1500, -- Cooldown between throws in ms
    Key = 'G',
    RemoveOnEmpty = true, -- Automatically remove weapon from ped when ammo reaches 0
    DefaultSpeed = 35.0,  -- Default throw velocity if weapon is not explicitly listed below

    Throwables = {
        { hash = `WEAPON_GRENADE`,      speed = 35.0, label = "Grenade" },
        { hash = `WEAPON_MOLOTOV`,      speed = 30.0, label = "Molotov" },
        { hash = `WEAPON_SMOKEGRENADE`, speed = 35.0, label = "Smoke Grenade" },
        -- Add custom / addon weapons here...
    }
}
```

## 👏 Credits

Special thanks to the creators of the animation assets used in this resource:

* **Leaning Left Animations:** [Rifle Tactical Poses Pack 2](https://www.gta5-mods.com/misc/rifle-tactical-poses-pack-2-sp-fivem-ready-add-on)
* **Leaning Right Animations:** [Rifle Based Tactical Pose Pack](https://www.gta5-mods.com/misc/rifle-based-tactical-pose-pack-fivem-ready)