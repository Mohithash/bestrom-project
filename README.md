# BestROM

**BestROM** — pure **AOSP Android 17** custom ROM.

### First device: Xiaomi POCO F6 / Redmi Turbo 3 (`peridot`)

| | |
|--|--|
| **Android** | **17** (AOSP `android-17.0.0_r1`) |
| **API** | 37 |
| **Base** | Pure AOSP — **not** VoltageOS / Lineage |
| **Status** | Bring-up / first on peridot |
| **GitHub** | [@Mohithash](https://github.com/Mohithash) |
| **Downloads** | [sourceforge.net/projects/bestrom](https://sourceforge.net/projects/bestrom/) |

## Architecture

```
AOSP android-17.0.0_r1
 └── vendor/bestrom          (BestROM brand)
 └── device/xiaomi/peridot   (branch 17 — port from 16.2)
 └── vendor/xiaomi/peridot
 └── kernel/xiaomi/sm8635*
 = BestROM for peridot
```

## Repos

| Repo | Branch | Role |
|------|--------|------|
| [bestrom_manifest](https://github.com/Mohithash/bestrom_manifest) | `17` | Local manifests + port docs |
| [android_vendor_bestrom](https://github.com/Mohithash/android_vendor_bestrom) | `17` | Branding |
| [device_xiaomi_peridot](https://github.com/Mohithash/device_xiaomi_peridot) | `17` | Device (bootstrap) |
| [vendor_xiaomi_peridot](https://github.com/Mohithash/vendor_xiaomi_peridot) | `17` | Blobs |
| [kernel_xiaomi_sm8635*](https://github.com/Mohithash/kernel_xiaomi_sm8635) | `17` | Kernel |

## Build

```bash
mkdir ~/bestrom-a17 && cd ~/bestrom-a17

# 1) Pure AOSP 17
repo init -u https://android.googlesource.com/platform/manifest \
  -b android-17.0.0_r1 --git-lfs

# 2) BestROM + peridot
mkdir -p .repo/local_manifests
curl -L -o .repo/local_manifests/bestrom.xml \
  https://raw.githubusercontent.com/Mohithash/bestrom_manifest/17/snippets/local_manifest_peridot.xml

repo sync -c -j$(nproc) --force-sync --no-clone-bundle

# 3) Build
. build/envsetup.sh
lunch bestrom_peridot-user
m -j$(nproc)
```

## Reality check

You are attempting the **first A17 AOSP ROM for peridot**.  
Device trees on `17` are a **port starting point** from working `16.2` sources. Expect compile/runtime errors until bring-up is done.

See [PORTING.md](https://github.com/Mohithash/bestrom_manifest/blob/17/PORTING.md).

## License

Apache-2.0 for BestROM original files. AOSP and device code keep upstream licenses.
