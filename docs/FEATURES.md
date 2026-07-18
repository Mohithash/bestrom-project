# BestROM 17 — Feature vision

First ship is **bring-up**. Features below are the product roadmap after a bootable peridot build.

## Phase 0 — Boot (now)

- [ ] Pure AOSP 17 sync + BestROM product
- [ ] peridot device/vendor/kernel port
- [ ] Flashable zip / fastboot images
- [ ] SourceForge releases under `bestrom/peridot`

## Phase 1 — Daily driver

- [ ] Stable RIL / data / VoLTE
- [ ] Camera photo + video baseline
- [ ] Fingerprint (UDFPS) + face if feasible
- [ ] Audio, Bluetooth, Wi‑Fi 6/6E as hardware allows
- [ ] Battery charging & thermal sane defaults

## Phase 2 — BestROM identity (design)

- [ ] Aurora boot animation
- [ ] Wallpaper pack (AMOLED mesh)
- [ ] Settings monochrome + accent
- [ ] SetupWizard dark gradient
- [ ] `ro.bestrom.*` props + About phone branding

## Phase 3 — Craft extras (optional flavors)

| Flavor | Contents |
|--------|----------|
| **Vanilla** | Pure AOSP + BestROM brand only |
| **Plus** | Charge limit, refresh-rate tile, GameSpace light |
| **Privacy** | Hardened DNS presets, clipboard auto-clear |

See main project README for architecture.
