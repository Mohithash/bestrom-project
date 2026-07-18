<p align="center">
  <img src="brand/logo/bestrom-icon.jpg" alt="BestROM" width="128" height="128" />
</p>

<h1 align="center">BestROM</h1>

<p align="center">
  <strong>Pure AOSP Android 17</strong> · black + grey dots · battery first · <code>peridot</code>
</p>

<p align="center">
  <img src="brand/banner/github-banner.jpg" alt="BestROM monochrome banner" width="100%" />
</p>

<p align="center">
  <a href="https://github.com/Mohithash/bestrom_manifest/tree/17"><img src="https://img.shields.io/badge/Android-17-9CA3AF?style=for-the-badge&labelColor=000000" alt="Android 17" /></a>
  <a href="https://github.com/Mohithash/bestrom_manifest/tree/17"><img src="https://img.shields.io/badge/Base-AOSP-D1D5DB?style=for-the-badge&labelColor=000000" alt="AOSP" /></a>
  <a href="https://sourceforge.net/projects/bestrom/"><img src="https://img.shields.io/badge/Downloads-SourceForge-6B7280?style=for-the-badge&labelColor=000000" alt="SF" /></a>
  <img src="https://img.shields.io/badge/Device-peridot-9CA3AF?style=for-the-badge&labelColor=000000" alt="peridot" />
</p>

---

## What is BestROM?

**BestROM** is a **pure AOSP Android 17** custom ROM — not Lineage, not VoltageOS, not another heavy skin.

We are building toward one of the **first custom ROMs on Android 17** whose daily-driver promise is simple:

> **Best battery life + real smoothness — AOSP-compliant, without the cosmetic tax.**

| | |
|--|--|
| **Android** | 17 · API 37 · `android-17.0.0_r1` |
| **North star** | **Battery first** — then smoothness, then everything else |
| **Design** | **Nothing-like monochrome** — black + **grey dots** only |
| **UI default** | Pure black from first boot — no light skin, no brand rainbow |
| **First device** | Xiaomi **POCO F6 / Redmi Turbo 3** (`peridot`) |
| **Status** | Brand + scaffold live · device bring-up next |
| **Goal** | Clean AOSP daily driver — thrifty, fluid, honest |

> Tagline: **Black. Grey dots. Battery first.**

---

## Design philosophy

### Battery is the most important feature

Modern Android often spends its budget on the wrong things: **cosmetic skins**, endless **animations**, heavy **artworks**, feature checklists, and **placebo “optimizations”** that look impressive in screenshots and feel worse in the pocket.

That cost is not free. It steals:

| What gets spent | What you lose |
|-----------------|---------------|
| GPU / compositor work on flashy UI | **Smoothness** and frame consistency |
| Always-on visual noise | **Fluidity** under real multitasking |
| Bright panels, skins, effects | **Battery juice** you needed by evening |
| Bloated “exclusive” features | Stability, updateability, AOSP clarity |

**BestROM rejects that trade.**

We believe a daily driver should feel **fast because it is light**, not because it papered over jank with motion blur and marketing. Battery is not a settings page we remember later — it is the **primary design constraint**. Every default, every surface, every optional extra has to answer:

1. Does this **help battery** (or at least not hurt it)?  
2. Does this keep the system **smooth and fluid** under real use?  
3. Is it still **AOSP-compliant** and maintainable — not a one-off skin fork?

If the answer is “it looks cool in a trailer,” it does not ship as a default.

### What we refuse

| We skip | Why |
|---------|-----|
| Heavy cosmetic skins | CPU/GPU and memory tax for brand theater |
| Animation for animation’s sake | Motion should clarify, not perform |
| Artwork walls & bright chrome | AMOLED pays in milliwatts; battery pays in hours |
| Feature bloat & placebo toggles | Complexity without real endurance or fluidity |
| “Everything maxed” defaults | 120 Hz + light UI + effects is the opposite of our product |

### What we build instead

| We ship | Why |
|---------|-----|
| **Pure AOSP 17 base** | Clean path, fewer surprise layers, real compliance |
| **Black + grey only** | Brand colors forbidden except greys — Nothing-like quiet |
| **Grey dotted marks** | B / BESTROM as dots — thrifty on AMOLED |
| **Thrifty controls** | Charge limit, refresh sense, power-save that cuts *cost* |
| **Daily-driver honesty** | Radio, camera, stability over screenshot features |

**BestROM** = AOSP soul + **Nothing-like monochrome**.  

Same taste as **Nothing OS**: ultra minimal, empty space, **grey dotted letters**. Not a clone: **pure AOSP 17**, pure **black** canvas, **no brand hues** — only black and grey.

### In one line

> *Black. Grey dots. Ultra minimal. More battery. Still Android — pure AOSP 17.*

**About:** [`docs/ABOUT.md`](docs/ABOUT.md) · **Philosophy:** [`docs/PHILOSOPHY.md`](docs/PHILOSOPHY.md)  
**Press / social kit:** [`docs/PRESS_KIT.md`](docs/PRESS_KIT.md) · **Bios:** [`docs/SOCIAL_BIOS.md`](docs/SOCIAL_BIOS.md)  
**Dot type:** [`design/DOT_TYPE.md`](design/DOT_TYPE.md) · **Branding:** [`brand/README.md`](brand/README.md)  
**UI / UX:** [`docs/BATTERY_UI.md`](docs/BATTERY_UI.md) · **Design system:** [`design/DESIGN_SYSTEM.md`](design/DESIGN_SYSTEM.md)

---

## Visual language — black + grey dots only

**Hard palette law:** brand design may use **only black and greys**. No violet, cyan, or other hues.

| Law | Meaning |
|-----|---------|
| Pure black canvas | `#000000` backgrounds — **always** |
| Grey dots only | Logo / wordmark = mid greys `#9CA3AF` / `#D1D5DB` on black |
| Ultra minimal | Empty space > decoration (Nothing-like quiet) |
| No brand rainbow | Zero violet/cyan/neon in BestROM chrome |
| No light product skin | Dark-only from Setup → home → Settings → QS |
| Motion stays cheap | Short grey-dot assemble — no color cycles |

| Asset | Path |
|-------|------|
| **About (project)** | [`docs/ABOUT.md`](docs/ABOUT.md) |
| **Press kit (PR / social)** | [`docs/PRESS_KIT.md`](docs/PRESS_KIT.md) |
| **Social bios** | [`docs/SOCIAL_BIOS.md`](docs/SOCIAL_BIOS.md) |
| **Philosophy** | [`docs/PHILOSOPHY.md`](docs/PHILOSOPHY.md) |
| Branding kit index | [`brand/README.md`](brand/README.md) |
| Design system | [`design/DESIGN_SYSTEM.md`](design/DESIGN_SYSTEM.md) |
| Dot type (logo letters) | [`design/DOT_TYPE.md`](design/DOT_TYPE.md) |
| CSS tokens | [`design/tokens.css`](design/tokens.css) |
| Battery UI / UX | [`docs/BATTERY_UI.md`](docs/BATTERY_UI.md) |
| Feature roadmap | [`docs/FEATURES.md`](docs/FEATURES.md) |
| Complete ROM roadmap | [`docs/COMPLETE_ROM_ROADMAP.md`](docs/COMPLETE_ROM_ROADMAP.md) |
| Landing page | [`docs/index.html`](docs/index.html) |
| App icon | [`brand/logo/bestrom-icon.jpg`](brand/logo/bestrom-icon.jpg) |
| GitHub banner | [`brand/banner/github-banner.jpg`](brand/banner/github-banner.jpg) |
| AMOLED wallpaper | [`brand/wallpaper/bestrom-amoled.jpg`](brand/wallpaper/bestrom-amoled.jpg) |

**Palette:** black `#000000` · grey dots `#6B7280` / `#9CA3AF` / `#D1D5DB` — **that is all**

<p align="center">
  <img src="brand/wallpaper/bestrom-amoled.jpg" alt="BestROM wallpaper" width="280" />
</p>

---

## Architecture

```
AOSP android-17.0.0_r1
 ├── vendor/bestrom              ← brand, props, overlays (this project’s sister repo)
 ├── device/xiaomi/peridot @ 17   ← port from 16.2 (bring-up)
 ├── vendor/xiaomi/peridot @ 17
 └── kernel/xiaomi/sm8635* @ 17
         ↓
   BestROM for peridot
```

## Repositories

| Repo | Branch | Role |
|------|--------|------|
| **[bestrom-project](https://github.com/Mohithash/bestrom-project)** (this) | `main` | Hub · design · docs |
| [bestrom_manifest](https://github.com/Mohithash/bestrom_manifest) | `17` | Local manifests |
| [android_vendor_bestrom](https://github.com/Mohithash/android_vendor_bestrom) | `17` | `vendor/bestrom` |
| device / vendor / kernel forks | `17` | Bootstrap port |

## Build (when trees are ready)

```bash
mkdir ~/bestrom-a17 && cd ~/bestrom-a17

repo init -u https://android.googlesource.com/platform/manifest \
  -b android-17.0.0_r1 --git-lfs

mkdir -p .repo/local_manifests
curl -L -o .repo/local_manifests/bestrom.xml \
  https://raw.githubusercontent.com/Mohithash/bestrom_manifest/17/snippets/local_manifest_peridot.xml

repo sync -c -j$(nproc) --force-sync --no-clone-bundle

. build/envsetup.sh
source vendor/bestrom/build/envsetup.sh
bestrom_lunch peridot user
m -j$(nproc)
```

## Reality check

Peridot on **A17** is a **first-of-kind** effort. Trees on branch `17` start from working **16.2** sources and need HAL / sepolicy / kernel bring-up.

See [PORTING.md](https://github.com/Mohithash/bestrom_manifest/blob/17/PORTING.md).

## Downloads

[sourceforge.net/projects/bestrom](https://sourceforge.net/projects/bestrom/) · folder `peridot/` when builds ship.

## Community & visibility

| | |
|--|--|
| **Issues** | Use GitHub Issues (templates in [`.github/`](.github/)) |
| **Contributing** | [`.github/CONTRIBUTING.md`](.github/CONTRIBUTING.md) |
| **Security** | [`.github/SECURITY.md`](.github/SECURITY.md) |
| **Press kit** | [`docs/PRESS_KIT.md`](docs/PRESS_KIT.md) — Reddit, X, XDA, Telegram copy |
| **Share** | Always link this hub + monochrome logo/banner |

**Topics:** `android` · `aosp` · `android-17` · `custom-rom` · `bestrom` · `peridot` · `poco-f6` · `battery`

## License

- BestROM original files: **Apache-2.0**
- AOSP / device / kernel: keep upstream licenses

---

<p align="center">
  <sub>BestROM · black · grey dots · pure AOSP 17 · peridot first</sub>
</p>
