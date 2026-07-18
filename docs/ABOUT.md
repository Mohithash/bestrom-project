# About BestROM

**BestROM** is a **pure AOSP Android 17** custom ROM project.

| | |
|--|--|
| **North star** | Battery first |
| **Look** | Ultra minimal monochrome — **black + grey dots only** (Nothing-inspired quiet) |
| **Base** | Stock AOSP 17 — not Lineage, not Voltage, not a heavy skin |
| **First device** | Xiaomi **POCO F6 / Redmi Turbo 3** (`peridot`) |
| **Downloads** | [SourceForge · bestrom](https://sourceforge.net/projects/bestrom/) |

## One sentence

> Black. Grey dots. Ultra minimal. More battery. Still Android — pure AOSP 17.

## Why it exists

Modern Android often spends power and GPU budget on cosmetic skins, animation theater, artwork walls, and placebo “features.” That tax steals **smoothness** and **battery juice**.

BestROM rejects that trade. We build a **daily driver** that stays light, dark, and honest — AOSP-compliant and maintainable.

## What we are / aren’t

| We are | We aren’t |
|--------|-----------|
| Pure AOSP 17 product | A HyperOS / MIUI clone |
| Battery-first monochrome UI | Multicolor skin circus |
| Peridot-first bring-up | “100 devices day one” vaporware |
| Open brand + trees on GitHub | Closed prebuilt-only mystery ROM |

## Project map

| Repo | Role |
|------|------|
| [bestrom-project](https://github.com/Mohithash/bestrom-project) | Hub · design · docs · PR kit |
| [bestrom_manifest](https://github.com/Mohithash/bestrom_manifest) | `repo` local manifests · porting |
| [android_vendor_bestrom](https://github.com/Mohithash/android_vendor_bestrom) | `vendor/bestrom` product layer |
| [device_xiaomi_peridot](https://github.com/Mohithash/device_xiaomi_peridot) | Device tree (`17` = BestROM A17) |
| Kernel / vendor / hardware forks | Bring-up support trees |

## Status

| Track | Status |
|-------|--------|
| Brand + monochrome kit | Live |
| A17 product isolation (`BESTROM_BUILD`) | Live on device `@17` |
| Full AOSP 17 boot on peridot | In progress (first-wave port) |
| VoltageOS 5.11-EOL peridot | Parallel reference build |

## Contact / community

- **GitHub:** [@Mohithash](https://github.com/Mohithash)
- **Issues:** use the hub or device repo Issues
- **Discussions:** enable on hub for Q&A / screenshots
- **Downloads:** SourceForge project **bestrom**

## Press / social

See [PRESS_KIT.md](PRESS_KIT.md) · [brand/](../brand/) · [PHILOSOPHY.md](PHILOSOPHY.md)

## License

BestROM original files: **Apache-2.0** (unless noted).  
AOSP / device / kernel: keep upstream licenses.
