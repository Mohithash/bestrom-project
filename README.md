<p align="center">
  <img src="brand/logo/bestrom-icon.jpg" alt="BestROM" width="128" height="128" />
</p>

<h1 align="center">BestROM</h1>

<p align="center">
  <strong>Pure AOSP Android 17</strong> · crafted clean · first light on <code>peridot</code>
</p>

<p align="center">
  <img src="brand/banner/github-banner.jpg" alt="BestROM Aurora banner" width="100%" />
</p>

<p align="center">
  <a href="https://github.com/Mohithash/bestrom_manifest/tree/17"><img src="https://img.shields.io/badge/Android-17-22D3EE?style=for-the-badge&labelColor=0B0614" alt="Android 17" /></a>
  <a href="https://github.com/Mohithash/bestrom_manifest/tree/17"><img src="https://img.shields.io/badge/Base-AOSP-7C3AED?style=for-the-badge&labelColor=0B0614" alt="AOSP" /></a>
  <a href="https://sourceforge.net/projects/bestrom/"><img src="https://img.shields.io/badge/Downloads-SourceForge-A78BFA?style=for-the-badge&labelColor=0B0614" alt="SF" /></a>
  <img src="https://img.shields.io/badge/Device-peridot-E2E8F0?style=for-the-badge&labelColor=0B0614" alt="peridot" />
</p>

---

## What is BestROM?

**BestROM** is a **pure AOSP Android 17** custom ROM — not Lineage, not VoltageOS.

| | |
|--|--|
| **Android** | 17 · API 37 · `android-17.0.0_r1` |
| **Design** | **Aurora Night** — void black, violet, cyan |
| **First device** | Xiaomi **POCO F6 / Redmi Turbo 3** (`peridot`) |
| **Status** | Brand + scaffold live · device bring-up next |
| **Goal** | Clean base + optional craft flavors |

> Tagline: **Android, refined.**

---

## Design

We treat BestROM as a **product**, not only a build script.

| Asset | Path |
|-------|------|
| Design system | [`design/DESIGN_SYSTEM.md`](design/DESIGN_SYSTEM.md) |
| CSS tokens | [`design/tokens.css`](design/tokens.css) |
| App icon | [`brand/logo/bestrom-icon.jpg`](brand/logo/bestrom-icon.jpg) |
| GitHub banner | [`brand/banner/github-banner.jpg`](brand/banner/github-banner.jpg) |
| AMOLED wallpaper | [`brand/wallpaper/bestrom-amoled.jpg`](brand/wallpaper/bestrom-amoled.jpg) |
| Feature roadmap | [`docs/FEATURES.md`](docs/FEATURES.md) |
| Complete ROM roadmap | [`docs/COMPLETE_ROM_ROADMAP.md`](docs/COMPLETE_ROM_ROADMAP.md) |

**Palette:** void `#0B0614` · violet `#7C3AED` · cyan `#22D3EE` · mist `#E2E8F0`

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

## License

- BestROM original files: **Apache-2.0**
- AOSP / device / kernel: keep upstream licenses

---

<p align="center">
  <sub>BestROM · Aurora · Android 17 · peridot first</sub>
</p>
