# BestROM Design System

**Version:** 17.0 · **Codename:** Aurora  
**Platform:** Pure AOSP Android 17 · **First device:** peridot

---

## Brand essence

| Pillar | Meaning |
|--------|---------|
| **Clarity** | Pure AOSP core — no heavy skins |
| **Craft** | Thoughtful defaults, not bloat |
| **Night** | AMOLED-first dark aesthetic |
| **First light** | First A17 custom ROM wave on peridot |

**Tagline options**
- *Android, refined.*
- *Pure AOSP. First on peridot.*
- *Built clean. Shipped bold.*

---

## Color palette — “Aurora Night”

| Token | Hex | Use |
|-------|-----|-----|
| `void` | `#0B0614` | App backgrounds, AMOLED black-ish |
| `deep` | `#1A0A3E` | Primary surfaces |
| `violet` | `#7C3AED` | Brand primary / CTAs |
| `violet-glow` | `#A78BFA` | Highlights, icons |
| `cyan` | `#22D3EE` | Accent, links, success sparks |
| `mist` | `#E2E8F0` | Primary text on dark |
| `muted` | `#94A3B8` | Secondary text |
| `line` | `#2E1065` | Dividers, strokes |
| `danger` | `#F43F5E` | Errors |
| `ok` | `#34D399` | Success |

### Gradients

```css
/* Brand mark */
--grad-brand: linear-gradient(135deg, #1A0A3E 0%, #7C3AED 50%, #22D3EE 100%);

/* Wallpaper mesh */
--grad-mesh: radial-gradient(ellipse at 20% 20%, #7C3AED44, transparent 50%),
             radial-gradient(ellipse at 80% 60%, #22D3EE33, transparent 45%),
             #0B0614;

/* Glass panel */
--glass: rgba(26, 10, 62, 0.55);
--glass-border: rgba(167, 139, 250, 0.25);
```

---

## Typography

| Role | Suggestion |
|------|------------|
| Display / logo | **Satoshi** / **General Sans** / **Inter Tight** |
| UI body | **Inter** or AOSP **Roboto** / **Google Sans** |
| Mono / build logs | **JetBrains Mono** / **Roboto Mono** |

Scale (dp-ish)

- Display: 40 / 700  
- Title: 24 / 600  
- Body: 15 / 400  
- Caption: 12 / 500  

---

## Shape & motion

- Corner radius: **16dp** cards · **999** pills · **24dp** dialogs  
- Elevation: soft violet glow, not hard Material shadows  
- Motion: 200–280ms ease-out; prefer opacity + scale 0.96→1  
- Blur: light glass on QS / media panels when supported  

---

## Iconography

- Stroke: 1.75–2px, rounded caps  
- Style: outlined + filled accents in `cyan` / `violet`  
- App icon: geometric **B** mark on void (see `brand/logo/`)  

---

## Product UI directions

1. **SetupWizard** — dark gradient splash, single primary CTA in violet  
2. **Settings** — monochrome list + accent switches in cyan  
3. **QS** — glass tiles, cyan active state  
4. **Wallpaper** — AMOLED mesh pack (see `brand/wallpaper/`)  
5. **Boot animation** — void → violet pulse → cyan flash → BestROM wordmark  

---

## Do / Don’t

| Do | Don’t |
|----|--------|
| High contrast on AMOLED | Pure gray walls of text |
| Sparse accent color | Rainbow neon everywhere |
| Credit AOSP / device maintainers | Claim “stock HyperOS” |
| Ship vanilla + optional extras | Bake root / random mod packs |

---

## Asset map

```
brand/
  logo/bestrom-icon.jpg       # app / org avatar
  banner/github-banner.jpg    # GitHub social / README hero
  wallpaper/bestrom-amoled.jpg
design/
  DESIGN_SYSTEM.md            # this file
  tokens.css                  # CSS variables
```
