# BestROM 17 — Feature vision

**Product identity:** pure AOSP 17 + **battery-first dark UI/UX** (AMOLED pure black).

First ship is **bring-up**. Features below are the product roadmap after a bootable peridot build.

---

## Phase 0 — Boot (now)

- [ ] Pure AOSP 17 sync + BestROM product
- [ ] peridot device/vendor/kernel port
- [ ] Flashable zip / fastboot images
- [ ] SourceForge releases under `bestrom/peridot`

## Phase 1 — Daily driver

- [ ] Stable RIL / data / VoLTE
- [ ] Camera photo + video baseline
- [ ] Fingerprint (UDFPS) + face if feasible
- [ ] Audio, Bluetooth, Wi‑Fi as hardware allows
- [ ] Battery charging & thermal sane defaults

## Phase 2 — Battery-first identity (design + UX)

Core story: **dark UI so the screen uses less power**.

- [ ] **Dark-only product theme** (Settings / SystemUI / Setup)
- [ ] **Pure black** wallpaper pack + home empty space
- [ ] Aurora boot animation (black-led, sparse violet/cyan)
- [ ] QS / shade: black scrim, cyan active tiles
- [ ] Settings monochrome on black + cyan switches
- [ ] SetupWizard: no light pages
- [ ] `ro.bestrom.*` props + About phone branding
- [ ] Design system enforced: [DESIGN_SYSTEM.md](../design/DESIGN_SYSTEM.md)
- [ ] UX spec: [BATTERY_UI.md](BATTERY_UI.md)

## Phase 3 — Battery craft controls

| Control | Goal |
|---------|------|
| **Charge limit** 80/85/90 | Longevity + less heat |
| **Refresh rate tile** | 60 / auto / 120 — thrift by default when possible |
| **Power save UI mode** | Kill blur, prefer 60 Hz, tighter timeouts |
| **AOD policy** | Off default; optional black + dim clock |
| **Battery care page** | Signature BestROM surface with tips |

## Phase 4 — Flavors (optional)

| Flavor | Contents |
|--------|----------|
| **Vanilla** | Pure AOSP + BestROM **dark brand** only |
| **Plus** | Charge limit, RR tile, GameSpace light, AOD options |
| **Privacy** | Hardened DNS, clipboard auto-clear — same dark shell |

---

## Design non-negotiables

1. **Primary canvas = `#000000`** (AMOLED pixels off)  
2. **Accents are sparks** (violet/cyan), not full-screen floods  
3. **Light theme is not a goal** for v1 product  
4. **Battery UX + dark UI ship together** — not theme-only  

See main project README for architecture.
