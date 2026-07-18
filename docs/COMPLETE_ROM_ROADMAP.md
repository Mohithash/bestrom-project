# BestROM — Complete ROM Roadmap

How to turn BestROM from **brand + scaffold** into a **complete custom ROM**, using the same *structure* as **VoltageOS**, the **pure AOSP** path (from nothing), and **Nothing-style product restraint**.

**Product philosophy:** [PHILOSOPHY.md](PHILOSOPHY.md) — **battery first**, smoothness by restraint, AOSP-compliant daily driver. Not another cosmetic skin.

---

## What “complete” means

| Layer | Complete when |
|-------|----------------|
| **Platform** | Pure AOSP 17 sync builds |
| **Product** | `vendor/bestrom` defines brand, packages, overlays, bootanim, props |
| **Device** | peridot boots to UI with radio, Wi‑Fi, BT, audio, camera baseline |
| **Security** | Own signing keys; SELinux path defined |
| **Delivery** | Flashable zip/images + OTA channel (e.g. SourceForge) |
| **Project** | Docs, versioning, known issues, maintainership rules |

Brand alone ≠ ROM. VOS-level completeness = **manifest + vendor + device + keys + OTA**.

---

## Lessons from VoltageOS (structure to copy)

```
repo manifest (VoltageOS/manifest)
 ├── AOSP forks (frameworks, packages, system, …)
 ├── hardware/* + lineage/compat + QCOM CAF
 ├── device/qcom sepolicy + device/voltage/sepolicy
 ├── vendor/voltage          ← product personality
 ├── vendor/voltage-priv/keys
 ├── vendor/ota
└── tools/extract-utils

Device (e.g. GuidixX peridot)
 ├── voltage_peridot.mk → inherit vendor/voltage/config/common_full_phone.mk
 ├── voltage.dependencies → vendor, kernel, hardware
└── extract-files / proprietary-files
```

### VOS pieces BestROM should mirror under *new names*

| VOS | BestROM equivalent |
|-----|-------------------|
| `vendor/voltage` | `vendor/bestrom` (`android_vendor_bestrom`) |
| `vendor/voltage/config/common.mk` | `config/common.mk` |
| `vendor/voltage/config/packages.mk` | `config/packages.mk` |
| `vendor/voltage/config/version.mk` | `config/version.mk` |
| `vendor/voltage/overlay` | `overlay/` |
| `vendor/voltage/audio` | `audio/` (later) |
| `vendor/voltage/bootanimation` | `bootanimation/` |
| `vendor/voltage/prebuilt` | `prebuilt/common/` (backuptool, init, wallpapers) |
| `vendor/voltage-priv/keys` | `vendor/bestrom-priv/keys` (template + keys.sh) |
| `vendor/ota` | `vendor/bestrom_ota` or Updater config |
| `build/envsetup.sh` brunch | `build/envsetup.sh` → `bestrom_lunch` |
| `packages/apps/Updater` | Ship when OFFICIAL or self-hosted |
| Device `*_peridot.mk` | `bestrom_peridot.mk` |

**Do not** fork all of VOS frameworks on day one. BestROM = **stock AOSP 17 + fat vendor/bestrom + solid device**.

---

## Lessons from “Nothing”

### Product (Nothing Phone / Nothing OS *taste*)
- One strong visual identity (for us: **Aurora Night — battery-first dark**)
- Minimal UI, few signature features — not 40 half-baked toggles
- Clear story: **AMOLED pure black + thrifty defaults** (charge limit, RR)
- Restraint > bloat; **dark is the product**, not an optional skin

### From nothing (pure AOSP)
```
AOSP android-17.0.0_r*
 └── vendor/bestrom
 └── device/xiaomi/peridot @ 17
 └── vendor/xiaomi/peridot (blobs)
 └── kernel/xiaomi/sm8635*
 └── QCOM CAF only as required for SM8635
```

NothingOS source is **not** your base. AOSP is.

---

## Phases

### Phase 0 — Platform foundation
- [x] Brand hub + design system ([bestrom-project](https://github.com/Mohithash/bestrom-project))
- [x] Manifest scaffold (`bestrom_manifest` @ `17`)
- [x] Vendor skeleton (`android_vendor_bestrom` @ `17`)
- [ ] Expand vendor skeleton (this repo layout — packages, prebuilt, backuptool stubs)
- [ ] `vendor/bestrom-priv/keys` template + `keys.sh`
- [ ] Clean disk path: full AOSP 17 `repo sync` (not mixed with VOS tree)

### Phase 1 — Product makefile complete
- [ ] `config/common.mk` inherits version + packages + overlays
- [ ] `config/packages.mk` minimal daily apps (or AOSP defaults only)
- [ ] `config/common_full_phone.mk` for telephony products
- [ ] Bootanimation + wallpaper pack (Aurora assets)
- [ ] `backuptool` scripts for OTA/dirty flash
- [ ] `bestrom_peridot.mk` on device: inherit AOSP telephony + BestROM common

### Phase 2 — Device bring-up (peridot)
- [ ] Port device/BoardConfig for A17 API / HALs
- [ ] Kernel + modules + DTs boot
- [ ] Blobs via extract-utils aligned to A17
- [ ] RIL, Wi‑Fi, BT, GPS, audio, display, camera baseline
- [ ] Fingerprint / sensors
- [ ] SELinux permissive → enforcing

### Phase 3 — Ship
- [ ] Signing keys used in release builds
- [ ] Flashable zip / fastboot package
- [ ] SourceForge `bestrom/peridot/`
- [ ] Updater JSON or static release notes
- [ ] Known-issues wiki

### Phase 2b — Battery-first UI (parallel to bring-up)
- [ ] Dark-only product theme intent (Settings / SystemUI / Setup)
- [ ] Pure black wallpaper + bootanim (low luminance)
- [ ] Battery care UX: charge limit, RR thrift, AOD policy
- [ ] Specs: [BATTERY_UI.md](BATTERY_UI.md) · [DESIGN_SYSTEM.md](../design/DESIGN_SYSTEM.md)

### Phase 4 — Craft flavors (optional)
| Flavor | Contents |
|--------|----------|
| **Vanilla** | Brand + **pure-black dark shell** only |
| **Plus** | Charge limit, refresh tile, power-save UI hooks, light GameSpace |
| **Privacy** | DNS presets, clipboard clear — same dark battery shell |

---

## Target tree layout

```
aosp-17/
├── .repo/local_manifests/bestrom.xml
├── vendor/bestrom/                 # android_vendor_bestrom @ 17
│   ├── config/
│   │   ├── common.mk
│   │   ├── common_full_phone.mk
│   │   ├── packages.mk
│   │   ├── version.mk
│   │   └── BoardConfigBestROM.mk
│   ├── build/envsetup.sh
│   ├── build/tasks/bacon.mk        # optional
│   ├── overlay/
│   ├── prebuilt/common/
│   │   ├── bin/backuptool.sh
│   │   ├── etc/
│   │   └── media/                  # bootanimation, wallpapers
│   ├── bootanimation/
│   ├── audio/                      # later
│   └── README.md
├── vendor/bestrom-priv/keys/       # signing (not public secrets)
├── device/xiaomi/peridot/
├── vendor/xiaomi/peridot/
└── kernel/xiaomi/sm8635*
```

---

## Build flow (target)

```bash
repo init -u https://android.googlesource.com/platform/manifest \
  -b android-17.0.0_r1 --git-lfs
# + local_manifest bestrom.xml
repo sync -c -j$(nproc)

cd vendor/bestrom-priv/keys && ./keys.sh   # once

. build/envsetup.sh
source vendor/bestrom/build/envsetup.sh
bestrom_lunch peridot user
m bacon -j$(nproc)   # or m otapackage
```

---

## Parallel track (current)

| Track | Status |
|-------|--------|
| **VoltageOS 5.11-EOL peridot** | Active ServerHive build — learn device/blobs/sepolicy |
| **BestROM A17** | Brand + vendor skeleton + this roadmap |

Knowledge from VOS peridot **transfers** to BestROM A17 bring-up. Do not mix trees on disk.

---

## Definition of done (v1.0)

1. Boots on peridot with core telephony + Wi‑Fi + BT + audio + camera photo  
2. About phone shows **BestROM 17.x**  
3. Signed unofficial zip on SourceForge  
4. README flash instructions + known issues  
5. Vanilla flavor only (extras optional later)

---

## References

- VoltageOS: https://github.com/VoltageOS/manifest · https://github.com/VoltageOS/vendor_voltage  
- GuidixX peridot (VOS device pattern): https://github.com/GuidixX/device_xiaomi_peridot  
- BestROM design: [DESIGN_SYSTEM.md](../design/DESIGN_SYSTEM.md)  
- Features vision: [FEATURES.md](FEATURES.md)
