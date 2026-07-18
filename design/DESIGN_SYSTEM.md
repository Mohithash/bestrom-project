# BestROM Design System

**Version:** 17.0 · **Codename:** Aurora Night  
**Platform:** Pure AOSP Android 17 · **First device:** peridot  

**Philosophy:** [docs/PHILOSOPHY.md](../docs/PHILOSOPHY.md)  
**Dot type:** [DOT_TYPE.md](DOT_TYPE.md) — Nothing-inspired dotted letters on pure black  

---

## Brand essence

| Pillar | Meaning |
|--------|---------|
| **Battery** | Primary feature. Pure black, thrifty defaults, no cosmetic milliwatt tax |
| **Pure dark** | **Default = `#000000`.** Not gray Material dark. Not light + night toggle for v1 |
| **Ultra minimal** | Nothing-like restraint: silence, space, no chrome walls |
| **Dot identity** | Logos & brand marks use **dotted letterforms**, not solid fill blobs |
| **Smoothness** | Light stack — fluid because it is restrained |
| **AOSP** | Pure Android 17 — brand overlays, not a heavy skin OS |

**Taglines**
- *Android, refined. Battery first. Pure dark by default.*
- *Ultra minimal. Dotted mark. Pure black.*
- *Nothing-level quiet. BestROM-level battery.*

### Visual idea (one sentence)

**Pure black backgrounds + ultra-minimal dotted letters (B / BESTROM)** — same family of quiet as Nothing OS, pushed further for AMOLED battery with true black, not light/gray skins.

---

## Nothing OS inspiration (what we take / leave)

| Take | Leave |
|------|--------|
| Ultra minimal product taste | Light / off-white UI as default |
| Dot / glyph-like letter craft | Closed proprietary stack as base |
| Lots of empty space | Hardware-only identity |
| Few loud features | Feature theater |

We are **inspired**, not a clone. Base is **pure AOSP 17**. Look is **darker and thriftier** for battery.

Full dot rules: [DOT_TYPE.md](DOT_TYPE.md)

---

## Against the cosmetic tax

| Design choice | Battery / smoothness |
|---------------|----------------------|
| True black `#000000` canvas | OLED pixels off |
| Dotted marks (not solid white logos) | Lower lit area |
| Sparse violet/cyan sparks | Low average luminance |
| Short purposeful motion | Less GPU work |
| No heavy skin framework | Less RAM / jank |

**If it only looks cool in a trailer, it is not a default.**

---

## Color palette — Aurora Night (Battery)

| Token | Hex | Use |
|-------|-----|-----|
| `black` | `#000000` | **Primary canvas** |
| `void` | `#0B0614` | Rare near-black brand tint |
| `ink` | `#0A0A0A` | Card lift if needed |
| `deep` | `#14082A` | Small elevated panels |
| `dot` | `#E2E8F0` | Dot-matrix letter dots |
| `violet` | `#7C3AED` | CTA / rare accent dots |
| `violet-glow` | `#A78BFA` | Icon highlight |
| `cyan` | `#22D3EE` | Active / on / rare accent dots |
| `mist` | `#E2E8F0` | Primary text (UI) |
| `muted` | `#94A3B8` | Secondary text |
| `line` | `#1A1A1A` | Dividers |
| `danger` | `#F43F5E` | Errors |
| `ok` | `#34D399` | Success |

```css
--grad-mesh: radial-gradient(ellipse at 15% 10%, #7C3AED14, transparent 40%),
             #000000;
--glass: rgba(0, 0, 0, 0.72);
--glass-border: rgba(226, 232, 240, 0.08);
```

---

## Typography

| Role | Treatment |
|------|-----------|
| **Brand mark** | **Dot matrix** B / BESTROM ([DOT_TYPE.md](DOT_TYPE.md)) |
| UI body | Roboto / Inter — solid, readable (not dotted for paragraphs) |
| Display marketing | Prefer dotted wordmark or solid mist on black with huge margin |
| Mono | Roboto Mono / JetBrains Mono |

---

## Shape & motion

| Element | Spec |
|---------|------|
| Cards | 16dp, black/ink, hairline `#1A1A1A` |
| Corners | Soft, quiet — not playful skins |
| Motion | 180–240ms; dots may assemble once |
| Boot | Black → dotted B lights → hold → fade |
| Blur | Off under power save |

---

## Product UI directions

1. **Setup** — pure black + dotted B + one CTA  
2. **Settings** — black lists; monochrome; cyan switches  
3. **QS** — black scrim; minimal tiles  
4. **Wallpaper** — pure black + whisper dots  
5. **About** — small dotted BestROM mark  
6. **Battery care** — signature utility page (content > chrome)  

---

## Do / Don’t

| Do | Don’t |
|----|--------|
| `#000000` defaults | Light product theme |
| Dotted B / BESTROM brand | Solid filled neon logos as primary mark |
| Ultra empty black space | Artwork walls |
| Nothing-like quiet | Clone Nothing fonts/assets illegally |
| AOSP base | Unmaintainable skin OS |

---

## Asset map

```
brand/
  README.md
  logo/bestrom-icon.jpg       # dotted B
  banner/github-banner.jpg    # dotted mark on black
  wallpaper/bestrom-amoled.jpg
design/
  DESIGN_SYSTEM.md
  DOT_TYPE.md
  tokens.css
docs/
  PHILOSOPHY.md
  BATTERY_UI.md
```
