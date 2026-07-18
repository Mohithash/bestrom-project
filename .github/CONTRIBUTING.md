# Contributing to BestROM

Thanks for helping. BestROM is **pure AOSP 17**, **battery-first**, **monochrome** (black + grey dots only).

## Where to contribute

| Area | Repo |
|------|------|
| Docs / brand / PR | [bestrom-project](https://github.com/Mohithash/bestrom-project) |
| Manifests / porting docs | [bestrom_manifest](https://github.com/Mohithash/bestrom_manifest) |
| Product vendor | [android_vendor_bestrom](https://github.com/Mohithash/android_vendor_bestrom) |
| Device | [device_xiaomi_peridot](https://github.com/Mohithash/device_xiaomi_peridot) `17` |

## Rules of the road

1. **Battery first** — don’t add cosmetic GPU/UI cost by default.  
2. **Brand colors** — only black + greys in BestROM chrome (no violet/cyan brand art).  
3. **AOSP path** — prefer AOSP / minimal product layer over Lineage-only deps for `BESTROM_BUILD`.  
4. **Honesty** — don’t claim device support without trees + a flashable path.  
5. **No secrets** — never commit keys, tokens, or proprietary dumps without license clarity.  

## Pull requests

- One concern per PR when possible  
- Describe **what** and **why** (battery / boot / sepolicy / docs)  
- Link issues  
- For device: note branch (`17`) and test device if any  

## Issues

Use clear titles:

```
[peridot][A17] wifi fails after suspend
[docs] fix PORTING sync steps
[brand] add monochrome bootanim frames
```

## Code of conduct

Be respectful. No harassment. See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md).

## License

BestROM original contributions: **Apache-2.0** unless stated. Keep upstream licenses for AOSP/device/kernel code.
