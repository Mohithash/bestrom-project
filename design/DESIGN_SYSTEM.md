# BestROM Design System

**Version:** 17.0 · **Codename:** Monochrome Night  
**Platform:** Pure AOSP Android 17 · **First device:** peridot  

**Palette law:** **only black + greys.** No brand hues.  
**Craft:** Nothing-like **grey dotted letters** on pure black.  
**Philosophy:** [docs/PHILOSOPHY.md](../docs/PHILOSOPHY.md) · **Dots:** [DOT_TYPE.md](DOT_TYPE.md)

---

## Brand essence

| Pillar | Meaning |
|--------|---------|
| **Battery** | Pure black canvas, thrifty UI, no cosmetic color tax |
| **Monochrome** | **Black + grey only** — nothing else in brand design |
| **Ultra minimal** | Nothing OS quiet: space, dots, no chrome |
| **Dot identity** | Logos = grey dot-matrix letters |
| **AOSP** | Pure Android 17 product layer |

**Taglines**
- *Black. Grey dots. Battery first.*
- *Ultra minimal. Monochrome. Pure AOSP 17.*
- *Nothing-like quiet. BestROM pure black.*

---

## Color system (complete)

| Token | Hex | Use |
|-------|-----|-----|
| `black` | `#000000` | **Only** background / canvas |
| `ink` | `#0A0A0A` | Optional card lift (still near-black) |
| `dot-dim` | `#6B7280` | Soft / distant dots |
| `dot` | `#9CA3AF` | Primary grey dots |
| `dot-bright` | `#D1D5DB` | Active / emphasis dots & primary text |
| `line` | `#1A1A1A` | Hairline dividers |

### Forbidden (brand)

`violet` · `cyan` · any saturated hue · multicolor gradients · RGB glyph shows  

---

## Typography

| Role | Treatment |
|------|-----------|
| Brand mark | **Grey dotted** B / BESTROM |
| UI body | Solid grey text on black (Roboto / Inter) |
| Mono | Roboto Mono greys |

---

## Shape & motion

- Cards: black / ink, grey hairlines  
- Motion: grey dots fade only — no color animation  
- Boot: black → grey dotted B → fade  

---

## Product UI

| Surface | Default |
|---------|---------|
| Theme | Pure dark / black |
| Wallpaper | Black + whisper grey dots |
| QS / Settings | Black + grey type |
| Brand marks | Grey dots only |
| Switches / accents | Prefer grey / platform monochrome; avoid brand rainbow |

---

## Do / Don’t

| Do | Don’t |
|----|--------|
| `#000` + greys | Violet, cyan, neon brand colors |
| Dotted grey B | Solid multicolor logos |
| Empty black | Artwork walls |
| Inspired by Nothing minimal | Copy Nothing proprietary assets |

---

## Assets

```
brand/logo/bestrom-icon.jpg      # grey dotted B
brand/banner/github-banner.jpg
brand/wallpaper/bestrom-amoled.jpg
design/tokens.css
design/DOT_TYPE.md
```
