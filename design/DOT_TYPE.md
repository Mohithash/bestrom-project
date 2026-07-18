# BestROM — Dot type (Nothing-inspired)

Ultra-minimal **dot-matrix letterforms** on **pure black**.  
Inspired by **Nothing OS** restraint and glyph-like dots — adapted for **BestROM battery-first AMOLED**.

We are **not** Nothing OS and not a clone. We share the idea: **less ink, more silence, dots instead of solid chrome.**

---

## Why dots

| Solid filled logo / UI type | Dotted type on black |
|-----------------------------|----------------------|
| Large lit areas on OLED | Only small dots light up |
| Looks like every other skin | Ownable, minimal mark |
| Heavy “app icon blob” | Whisper of identity |

Dots = **ultra minimalistic** + still **legible brand** + friendlier to **battery** than big solid white wordmarks.

---

## Grid rules

| Rule | Spec |
|------|------|
| Canvas | Always `#000000` |
| Dot color | Mist `#E2E8F0` or pure white at low coverage |
| Accent dots | Optional single violet / cyan dots (never a rainbow field) |
| Grid | Regular matrix; prefer round dots |
| Weight | Sparse — prefer fewer dots over dense solid fill |
| Size | On lock/boot: large quiet B; on icons: compact B grid |
| Never | Solid filled letters as the **primary** brand mark |
| Never | Busy glyph animations that loop forever (battery) |

### Suggested matrix (reference)

- Icon: B on ~9–13 unit wide grid, dots ~ equally spaced  
- Wordmark BESTROM: monospaced-ish dot cells, letter spacing generous  
- Wallpaper: **very faint** oversized B or corner dust only  

Exact SVG/font can land later; **intent** is binding for all brand art.

---

## Where dotted type appears

| Surface | Treatment |
|---------|-----------|
| App / org icon | Dotted **B** on pure black |
| GitHub banner | Dotted wordmark or B, mostly empty black |
| Boot animation | Dots assemble briefly → hold → fade (short) |
| About phone | Small dotted BestROM mark |
| Wallpaper | Whisper dots / faint B — not a bright poster |
| Setup splash | Dotted B + one line of calm copy |

System UI body text stays **Roboto/Inter** for readability.  
**Dot type is brand craft**, not the entire Settings font (unless we ship a specialty face later).

---

## Motion (if any)

- Dots may **fade in** or light a few cells — 200–400ms  
- No forever pulse walls  
- Power save: static mark only  

---

## Relationship to Nothing

| Nothing OS (inspiration) | BestROM |
|--------------------------|---------|
| Ultra minimal | Same |
| Dot / glyph identity | Dotted B / BESTROM |
| Often light + gray product UI | **Pure black only** (our battery bar) |
| Hardware Glyph | Software dots on AMOLED black |
| Closed product stack | **Pure AOSP 17** product layer |

> *Nothing-level minimal. BestROM-level pure dark + battery.*

---

## Do / Don’t

| Do | Don’t |
|----|--------|
| Dotted B on `#000` | Solid neon filled logo as default |
| Generous black margin | Crowded dot fields that look solid |
| Few accent dots | RGB dotted rainbow |
| Short assemble animation | Looping light shows |

See [DESIGN_SYSTEM.md](DESIGN_SYSTEM.md) · [PHILOSOPHY.md](../docs/PHILOSOPHY.md)
