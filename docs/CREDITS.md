# Credits

BestROM is a product layer, not a from-scratch ROM. Almost everything that
makes it work was written by someone else. This page lists what it is built
on and what it ships, with the licence each one carries.

Every fork under [github.com/Mohithash](https://github.com/Mohithash) keeps
the upstream history, authors and notices intact — BestROM commits sit on top
of them rather than replacing them.

## The base

| Project | Licence | Where |
|---------|---------|-------|
| **VoltageOS 6.1** — the product configuration, apps and overlays this tree layers on | Apache-2.0 | [VoltageOS](https://github.com/VoltageOS) |
| **LineageOS** — VoltageOS's own base, and the origin of much of the framework work | Apache-2.0 | [LineageOS](https://github.com/LineageOS) |
| **AOSP** `android-17.0.0_r1` | Apache-2.0 | [Android Open Source Project](https://source.android.com) |
| **Theettam kernel** for `peridot`, from the Xiaomi and GKI sources | GPL-2.0 | [kernel_xiaomi_sm8635](https://github.com/Mohithash/kernel_xiaomi_sm8635) |

## Apps and components that ship

| Component | Upstream | Licence |
|-----------|----------|---------|
| **Cromite WebView** — the system WebView, replacing the AOSP Chromium prebuilt. Built from a BestROM fork that turns off a Chromium self-check which crashed host apps on Android 17 | [uazo/cromite](https://github.com/uazo/cromite) · [our fork](https://github.com/Mohithash/cromite/tree/bestrom-148) | GPL-3.0, over Chromium's BSD-3-Clause |
| **LeanType** — the keyboard, replacing the AOSP one. Itself a fork of HeliBoard, which came from OpenBoard and AOSP LatinIME | [LeanBitLab/LeanType](https://github.com/LeanBitLab/LeanType) · [our fork](https://github.com/Mohithash/LeanType/tree/bestrom-17) | GPL-3.0 |
| **Edge** — edge gestures, key remapping, pie menu, panels. A native port of an Xposed module, running without Xposed | [fcmfcm1999/EdgeX](https://github.com/fcmfcm1999/EdgeX) | GPL-3.0 |
| **Nullroute** — the DNS-level ad and tracker blocker. Written for this ROM, but the idea came from Re-Malwack | inspired by [ZG089/Re-Malwack](https://github.com/ZG089/Re-Malwack) | Apache-2.0 |
| **MiXplorer** — the file manager, preloaded as a removable app. Shipped unmodified and signed by its author, as his terms require | [mixplorer.com](https://mixplorer.com), Hootan Parsa (MiProjects) | proprietary, redistributed unmodified |
| **Via Browser** — preloaded as a removable app | [viayoo.com](https://viayoo.com), Various Tu | proprietary |
| **MiuiCamera** — the camera, with the Xiaomi firmware's own imaging blobs | Xiaomi | proprietary |

## Inside BestROM's own apps

The BestROM Agent is Apache-2.0 and original, but three ideas in it are not:

- the task loop, the screen attachment after an action, the history
  compaction, the stuck detector and the task budget are derived in structure
  from [PokeClaw](https://github.com/agents-io/PokeClaw) (Apache-2.0). No file
  is copied.
- the screen digest follows the idea of
  [minitap mobile-use](https://github.com/minitap-ai/mobile-use)'s Contextor
  (Apache-2.0). No code is taken.
- the tool names follow the shape of
  [mobile-mcp](https://github.com/mobile-next/mobile-mcp) (Apache-2.0), so a
  client written against it reads familiarly here. No code is taken.

Nullroute's baked blocklist carries only entries whose sources are MIT,
CC BY 3.0 or Unlicense. Copyleft and MPL lists are deliberately left out of
the signed image.

## Fonts

| Font | Author | Licence |
|------|--------|---------|
| **Doto** — the dot-matrix face on the lock screen and clock | [The Doto Project Authors](https://github.com/oliverlalan/Doto) | SIL Open Font License 1.1 |
| **Space Grotesk** — everything you read | [The Space Grotesk Project Authors](https://github.com/floriankarsten/space-grotesk) | SIL Open Font License 1.1 |

## Corrections

If something here is wrong, missing, or credited to the wrong person, open an
issue on [bestrom-project](https://github.com/Mohithash/bestrom-project/issues)
and it will be fixed.
