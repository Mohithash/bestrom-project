<p align="center">
  <img src="brand/logo/bestrom-icon.jpg" alt="BestROM" width="112" height="112" />
</p>

<h1 align="center">BestROM</h1>

<p align="center">Android 17 for the POCO F6 / Redmi Turbo 3 (<code>peridot</code>)</p>

<p align="center">
  <img src="brand/banner/github-banner.jpg" alt="BestROM" width="100%" />
</p>

BestROM is a product layer on top of [VoltageOS](https://github.com/VoltageOS)
6.1, which is itself built on LineageOS and AOSP. It targets battery life and a
plain dark interface rather than skins or feature count. Every fork under this
account keeps its upstream history, authors and notices; BestROM commits sit on
top of them.

This repository holds the project documentation, branding and the landing page.
The ROM itself is built from the [manifest](https://github.com/Mohithash/manifest).

## Status

| Device | Codename | Version | Build type | Latest build |
|--------|----------|---------|------------|--------------|
| POCO F6 / Redmi Turbo 3 | `peridot` | 3.0 (Android 17) | official | 2026-09-09 |

Builds are signed with project keys, not AOSP release keys, and ship without
root. Release notes for each build are on
[SourceForge](https://sourceforge.net/projects/bestrom/files/peridot/) and in
the [OTA changelog](https://raw.githubusercontent.com/Mohithash/bestrom_ota/17/changelog_peridot.txt).

## Download

[sourceforge.net/projects/bestrom](https://sourceforge.net/projects/bestrom/),
folder `peridot/`. Verify the checksum before flashing. The Updater app on the
device finds new builds on its own.

```
adb reboot recovery
# Recovery -> Apply update -> Apply from ADB
adb sideload BestROM-3.0-peridot-20260909-0059-OFFICIAL.zip
```

Dirty flashing over an earlier BestROM build is supported. Coming from another
ROM, wipe data first. The zip installs to the inactive slot and activates it.

## Build information

| | |
|--|--|
| Android | 17 (API 37), `CP2A.260605.016` |
| Base | VoltageOS 6.1, LineageOS, AOSP |
| Kernel | Linux 6.1.176, GKI `android14-6.1` |
| Security patch | 2026-08-01 |
| Vendor blobs | OS3.0.302.0.WNPMIXM |
| Build type | official, user |
| Signing keys | project keys, not release keys |
| Root | not included |

## Device

| | |
|--|--|
| Model | POCO F6 / Redmi Turbo 3 |
| Codename | `peridot` |
| SoC | Snapdragon 8s Gen 3 (SM8635) |
| Architecture | arm64, Cortex-A76 |
| Display | 1220 x 2712, 480 dpi |
| Partition layout | A/B, dynamic partitions |

## Features

- **Privacy** — PrivacyKit spoofs about 57 framework identifiers per app
  without root: Android ID, `Build.*`, IMEI, IMSI, MEID, SIM operator,
  advertising and Firebase IDs, MediaDRM, MAC addresses, device name, and
  location and GNSS coherence. Six rule types, 17 device templates, Play
  Integrity fixes and a TrickyStore implementation inside the framework.
  Hardware keystore attestation is not defeated.
- **Ad and tracker blocking** — in the system resolver, enabled by default. No
  root and no VPN slot. An optional deep mode covers apps that bypass the
  resolver.
- **Agent mode** — the device can carry out a typed task on its own. Off by
  default and disabled again on reboot. The model endpoint and key are yours;
  this project runs no endpoint.
- **WebView and keyboard** — Cromite replaces the AOSP Chromium prebuilt,
  LeanType replaces the AOSP keyboard.
- **Edge gestures** — edge swipes, key remapping, pie menu, side panels and
  clipboard history, as a separate app.
- **Theme** — monochrome and true black by default, with dot-matrix type on the
  lock screen and no window blur.
- **Battery and performance** — MGLRU, zstd zram, HWUI and dexopt tuning,
  deep-sleep statistics since boot, and per-app refresh rate.

## Build from source

Needs a standard AOSP build host: Ubuntu, `repo`, and around 400 GB free.

```bash
mkdir ~/bestrom && cd ~/bestrom
repo init -u https://github.com/Mohithash/manifest -b 17 --git-lfs
repo sync -c -j$(nproc) --no-clone-bundle

. build/envsetup.sh
lunch bestrom_peridot-cp2a-user
mka bestrom
```

The zip lands in `out/target/product/peridot/`. The tree also ships `AGENTS.md`
and `.mcp.json` at its root, so a coding agent can sync, build, verify and test
it through the MCP server in `vendor/bestrom/tools/mcp`.

## Repositories

| Repository | Branch | Contents |
|------------|--------|----------|
| [manifest](https://github.com/Mohithash/manifest) | `17` | `repo init` entry point |
| [vendor_bestrom](https://github.com/Mohithash/vendor_bestrom) | `17` | Branding, overlays, `tools/mcp` |
| [device_xiaomi_peridot](https://github.com/Mohithash/device_xiaomi_peridot) | `17` | Device tree |
| [vendor_xiaomi_peridot](https://github.com/Mohithash/vendor_xiaomi_peridot) | `17` | Proprietary blobs |
| [kernel_xiaomi_sm8635](https://github.com/Mohithash/kernel_xiaomi_sm8635) | `17` | Kernel |
| [bestrom_ota](https://github.com/Mohithash/bestrom_ota) | `17` | OTA catalog read by the Updater |
| [bestrom-project](https://github.com/Mohithash/bestrom-project) | `main` | This repository |

The framework and app changes live in the other `Mohithash/<path_with_underscores>`
forks on branch `17`.

## Documentation

| | |
|--|--|
| About | [`docs/ABOUT.md`](docs/ABOUT.md) |
| Philosophy | [`docs/PHILOSOPHY.md`](docs/PHILOSOPHY.md) |
| Credits | [`docs/CREDITS.md`](docs/CREDITS.md) |
| Features | [`docs/FEATURES.md`](docs/FEATURES.md) |
| Battery UI | [`docs/BATTERY_UI.md`](docs/BATTERY_UI.md) |
| Design system | [`design/DESIGN_SYSTEM.md`](design/DESIGN_SYSTEM.md) |
| Dot type | [`design/DOT_TYPE.md`](design/DOT_TYPE.md) |
| Branding kit | [`brand/README.md`](brand/README.md) |
| Press kit | [`docs/PRESS_KIT.md`](docs/PRESS_KIT.md) |
| Landing page | [`docs/index.html`](docs/index.html) |

## Design

The interface is black and grey only. Backgrounds are `#000000`; the logo and
wordmark use mid greys `#6B7280`, `#9CA3AF` and `#D1D5DB`. No other hues are
used in BestROM chrome, and there is no light product theme. Details are in
[`design/DESIGN_SYSTEM.md`](design/DESIGN_SYSTEM.md).

## Contributing

Bug reports go to [Issues](https://github.com/Mohithash/bestrom-project/issues);
templates are in [`.github/`](.github/). See
[`CONTRIBUTING.md`](.github/CONTRIBUTING.md) and
[`SECURITY.md`](.github/SECURITY.md).

## Credits

Built on VoltageOS 6.1, LineageOS and AOSP. Ships Cromite for the WebView,
LeanType for the keyboard, a native port of EdgeX for the edge gestures, and
MiXplorer and Via unmodified. Doto and Space Grotesk are used under the SIL Open
Font License. The full list, with licences, is in
[`docs/CREDITS.md`](docs/CREDITS.md).

## License

BestROM is free and open source. You may modify it and distribute a build
under your own name. BestROM's own files are Apache-2.0. Keep the notices.
AOSP, device, kernel and shipped components keep their upstream licences:
GPL parts need their source, and MiXplorer, Via and the Xiaomi camera blobs
are not relicensed by this project.

A fix or a port is a pull request. See
[`.github/CONTRIBUTING.md`](.github/CONTRIBUTING.md).

---

<p align="center"><sub>A hobby project. Not affiliated with Google, Xiaomi, POCO, LineageOS or VoltageOS.</sub></p>
