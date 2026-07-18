# BestROM 17 — Feature vision

**Philosophy:** [PHILOSOPHY.md](PHILOSOPHY.md)  
**Battery is the most important feature.** Smoothness by restraint. Pure AOSP 17 daily driver.

First ship is **bring-up**. Features below ship after a bootable peridot build — and only if they pass the three questions: *battery · smoothness · AOSP*.

---

## Phase 0 — Boot (now)

- [ ] Pure AOSP 17 sync + BestROM product
- [ ] peridot device/vendor/kernel port
- [ ] Flashable zip / fastboot images
- [ ] SourceForge releases under `bestrom/peridot`

## Phase 1 — Daily driver (honest basics)

- [ ] Stable RIL / data / VoLTE
- [ ] Camera photo + video baseline
- [ ] Fingerprint (UDFPS) + face if feasible
- [ ] Audio, Bluetooth, Wi‑Fi as hardware allows
- [ ] Thermal & charging sane defaults

## Phase 2 — Pure dark by default (identity)

- [ ] **Pure dark only** product theme (Settings / SystemUI / Setup) — no light default
- [ ] **`#000000` pure black** wallpaper as default pack
- [ ] Black-led boot animation (short, sparse)
- [ ] QS / shade: black scrim, grey active — monochrome only
- [ ] SetupWizard: zero light full-bleed pages
- [ ] Force / strong default night mode props where AOSP allows
- [ ] `ro.bestrom.*` props + About branding
- [ ] Specs: [BATTERY_UI.md](BATTERY_UI.md) · [DESIGN_SYSTEM.md](../design/DESIGN_SYSTEM.md) · [PHILOSOPHY.md](PHILOSOPHY.md)

## Phase 3 — Real battery craft (not placebo)

| Control | Why it ships |
|---------|----------------|
| Charge limit 80/85/90 | Longevity + less heat |
| Refresh rate tile | 60 / auto / 120 with honest cost labels |
| Power save UI mode | Kill blur, prefer 60 Hz, tighter timeouts |
| AOD policy | Off default; optional black + dim clock |
| Battery care page | Tips that match the dark product |

## Phase 4 — Flavors (optional, still light)

| Flavor | Contents |
|--------|----------|
| **Vanilla** | Pure AOSP + BestROM dark brand only |
| **Plus** | Charge limit, RR tile, light GameSpace |
| **Privacy** | DNS / clipboard tools — same dark shell |

---

## Explicit non-goals

- Heavy cosmetic skins competing with AOSP  
- Animation packs / artwork walls as defaults  
- Placebo “boosters” that don’t move battery or frames  
- **Light theme as equal default** (or dual light/dark parity in v1)  
- Soft-gray “Material dark” pretending to be battery-first  


---

See hub README for architecture.
