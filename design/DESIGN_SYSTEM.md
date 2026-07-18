# BestROM Design System

**Version:** 17.0 · **Codename:** Aurora Night  
**Platform:** Pure AOSP Android 17 · **First device:** peridot  

**Philosophy:** [docs/PHILOSOPHY.md](../docs/PHILOSOPHY.md) — **battery first**, then smoothness, AOSP-compliant daily driver.

---

## Brand essence

| Pillar | Meaning |
|--------|---------|
| **Battery** | Primary feature. Pure black, thrifty defaults, no cosmetic milliwatt tax |
| **Smoothness** | Light stack — fluid because it is restrained, not because of fake motion |
| **Night** | Dark is the product; light theme is not a v1 goal |
| **AOSP** | Pure Android 17 path — brand overlays, not a heavy skin OS |

**Taglines**
- *Android, refined. Battery first.*
- *Less cosmetic tax. More battery. More smoothness.*
- *Pure AOSP 17 — daily driver, not decoration.*

---

## Against the cosmetic tax

Modern Android often spends budget on skins, animation theater, artwork walls, and placebo features. That steals smoothness and battery.

| Design choice | Battery / smoothness |
|---------------|----------------------|
| True black `#000000` canvas | OLED pixels off |
| Sparse violet/cyan sparks | Low average luminance |
| Short purposeful motion | Less GPU work |
| No heavy skin framework | Less RAM / jank |
| Thrifty RR & charge limits | Real endurance |

**If it only looks cool in a trailer, it is not a default.**

---

## Color palette — Aurora Night (Battery)

| Token | Hex | Use |
|-------|-----|-----|
| `black` | `#000000` | **Primary canvas** |
| `void` | `#0B0614` | Rare near-black brand tint |
| `ink` | `#0A0A0A` | Card lift if pure black blends |
| `deep` | `#14082A` | Small elevated panels |
| `violet` | `#7C3AED` | Primary CTA / brand spark |
| `violet-glow` | `#A78BFA` | Icon highlight |
| `cyan` | `#22D3EE` | Active / on / links |
| `mist` | `#E2E8F0` | Primary text |
| `muted` | `#94A3B8` | Secondary text |
| `line` | `#1A1A1A` | Dividers |
| `danger` | `#F43F5E` | Errors (chips) |
| `ok` | `#34D399` | Success / healthy battery |

### Gradients (marks only)

```css
--grad-brand: linear-gradient(135deg, #000000 0%, #1A0A3E 55%, #7C3AED 100%);
--grad-mesh: radial-gradient(ellipse at 15% 10%, #7C3AED22, transparent 40%),
             radial-gradient(ellipse at 85% 80%, #22D3EE18, transparent 35%),
             #000000;
--glass: rgba(0, 0, 0, 0.72);
--glass-border: rgba(124, 58, 237, 0.18);
```

---

## Typography

| Role | Suggestion |
|------|------------|
| Display | Satoshi / Inter Tight |
| UI body | Roboto / Inter (prefer system — less custom cost) |
| Mono | JetBrains Mono / Roboto Mono |

Prefer normal weight over heavy black type on large areas (less lit mass).

---

## Shape & motion

| Element | Spec |
|---------|------|
| Cards | 16dp, ink/black, thin line — not bright elevation |
| Pills | 999 |
| Motion | 180–240ms opacity; no forever glow loops |
| Blur | Optional; **off** under power save |
| Boot | Black-led; brief violet pulse; no white holds |

---

## Product UI directions

1. **SetupWizard** — pure black, one violet CTA, zero light pages  
2. **Settings** — monochrome on black; cyan switches  
3. **QS** — black scrim; cyan active  
4. **Wallpaper** — pure black + micro aurora  
5. **Battery care** — signature page (charge limit, RR, tips)  
6. **Boot** — black frames, sparse brand  

Full UX: [BATTERY_UI.md](../docs/BATTERY_UI.md)

---

## Do / Don’t

| Do | Don’t |
|----|--------|
| `#000000` defaults | Ship light as equal default |
| Small cyan/violet accents | Full-screen neon skins |
| Light stack for smoothness | Animation that hides jank |
| AOSP-compliant product layer | Unmaintainable skin forks |
| Honest battery controls | Placebo “booster” toggles |

---

## Asset map

```
brand/
  README.md                 # branding kit index
  logo/bestrom-icon.jpg
  banner/github-banner.jpg
  wallpaper/bestrom-amoled.jpg
design/
  DESIGN_SYSTEM.md
  tokens.css
docs/
  PHILOSOPHY.md
  BATTERY_UI.md
  FEATURES.md
```
