# BestROM Design System

**Version:** 17.0 · **Codename:** Aurora Night  
**Platform:** Pure AOSP Android 17 · **First device:** peridot  
**North star:** **Dark-first UI so the screen drinks less power**

---

## Brand essence

Every surface, motion, and default exists to serve **battery life** first, then craft.

| Pillar | Meaning |
|--------|---------|
| **Battery** | AMOLED-true black, sparse light, no accidental bright walls |
| **Night** | Dark is default — light theme is not a product goal |
| **Clarity** | Pure AOSP core — no heavy skins that burn CPU/GPU |
| **Craft** | Few strong controls (charge limit, refresh, idle) over 40 toggles |

**Tagline options**
- *Android, refined. Battery first.*
- *Dark by design. Longer by night.*
- *Pure AOSP. Built for AMOLED.*

---

## Battery-first design law

On **OLED / AMOLED** (peridot: LTPO AMOLED), **lit pixels cost energy**. BestROM treats UI as a power budget:

| Law | Rule |
|-----|------|
| **1. Pure black canvas** | Primary backgrounds = `#000000` (pixels off), not dark gray |
| **2. Light is expensive** | Large white / bright panels are forbidden as defaults |
| **3. Accents are sparks** | Violet / cyan only on icons, switches, active states — never full-screen floods |
| **4. Dark is the only skin** | System UI, Settings, Setup, QS ship **dark-only** product theme |
| **5. Motion is cheap** | Short fades; no bright particle loops or always-on glow animations |
| **6. Software matches hardware** | UI defaults + battery/charging policy designed together |

### Why not “pretty dark gray”?

| Surface | Battery on AMOLED |
|---------|-------------------|
| `#000000` true black | Best — many pixels off |
| `#0B0614` / near-black | Good — still very dark |
| `#121212` Material dark | OK — still draws |
| Gray / light gray panels | Wasteful on OLED |
| White / light themes | Worst default for battery |

BestROM: **true black** for wallpaper, home empty space, Settings root, notification shade empty regions. Elevated cards may use near-black (`void` / `ink`) only when needed for separation — never light.

---

## Color palette — “Aurora Night (Battery)”

| Token | Hex | Use | Battery note |
|-------|-----|-----|--------------|
| `black` | `#000000` | **Primary canvas** — wallpaper, shell, Settings | Max OLED savings |
| `void` | `#0B0614` | Optional near-black brand tint on small surfaces | Still dark |
| `ink` | `#0A0A0A` | Slight lift for cards if pure black blends too hard | Minimal |
| `deep` | `#14082A` | Rare elevated panels (dialogs) | Keep small |
| `violet` | `#7C3AED` | Brand primary / active CTA (small) | Spark only |
| `violet-glow` | `#A78BFA` | Icon highlights | Low area |
| `cyan` | `#22D3EE` | Accent, links, “on” switches | Spark only |
| `mist` | `#E2E8F0` | Primary text | Prefer `#E2E8F0` over pure white where readable |
| `muted` | `#94A3B8` | Secondary text | Dimmer = less average luminance |
| `line` | `#1A1A1A` | Dividers | Near-invisible, not bright purple walls |
| `danger` | `#F43F5E` | Errors | Small chips only |
| `ok` | `#34D399` | Success / battery healthy | Small |

### Gradients (use sparingly)

```css
/* Brand mark only (icons, boot frame) — not full wallpaper flood */
--grad-brand: linear-gradient(135deg, #000000 0%, #1A0A3E 55%, #7C3AED 100%);

/* Wallpaper: mostly pure black + tiny aurora dust */
--grad-mesh: radial-gradient(ellipse at 15% 10%, #7C3AED22, transparent 40%),
             radial-gradient(ellipse at 85% 80%, #22D3EE18, transparent 35%),
             #000000;

/* Glass: dark, low alpha — no milky white frosted panels */
--glass: rgba(0, 0, 0, 0.72);
--glass-border: rgba(124, 58, 237, 0.18);
```

**Boot animation:** void black frames → brief violet pulse → dim cyan flash → wordmark. No long bright white holds.

---

## Typography

| Role | Suggestion |
|------|------------|
| Display / logo | **Satoshi** / **General Sans** / **Inter Tight** |
| UI body | AOSP **Roboto** / **Inter** (system default preferred — less custom font cost) |
| Mono / logs | **JetBrains Mono** / **Roboto Mono** |

- Prefer **normal weight** over heavy black type (large bold = more lit pixels)
- Body text: `#E2E8F0` on `#000000` (AA contrast without pure-white glare)
- Captions: `#94A3B8`

Scale (dp-ish): Display 40/700 · Title 24/600 · Body 15/400 · Caption 12/500

---

## Shape & motion (battery-aware)

| Element | Spec | Why |
|---------|------|-----|
| Cards | 16dp radius, `ink` / black | Separation without light fills |
| Pills | 999 | Compact CTAs |
| Dialogs | 24dp, black scrim | Scrim = more black, not gray wash |
| Elevation | Thin violet border, **no** bright Material shadows | Shadows on OLED often become gray glow |
| Motion | 180–240ms opacity only | Skip GPU-heavy blur loops on low battery |
| Blur | Optional QS only; disable under Power save | Blur costs GPU |
| Always-on | Prefer **off** or pure-black AOD with dim clock | AOD is a battery feature when dim |

---

## Iconography

- Stroke 1.75–2px, rounded caps  
- Default: **dim mist / muted**; active: **cyan** or **violet**  
- Avoid large filled white glyphs  
- App icon: geometric **B** on pure black  

---

## Product UI / UX — build for battery

### Global defaults (ship as BestROM product)

| Surface | Default behavior |
|---------|------------------|
| **Theme** | Dark only (force / strongly default `ui_night_mode`) |
| **Wallpaper** | Pure black + sparse aurora mesh |
| **QS / shade** | Black scrim, dim tiles, cyan “on” |
| **Status / nav bar** | Black / transparent over black content |
| **Settings** | Monochrome lists on black; cyan switches |
| **SetupWizard** | Black canvas, one violet CTA — no white pages |
| **Launcher** | Dark icons optional; empty home = black |
| **Notifications** | Dark cards; expand doesn’t flash white |
| **Keyboard** | Dark IME default when we control it |
| **Edge light / charging** | Dim; never full white charge flash |

### Battery UX features (product roadmap)

| Feature | UX intent |
|---------|-----------|
| **Charge limit** | Cap 80/85/90% — health + less heat |
| **Refresh rate** | Smart 60 / 120 tile; default thrifty when idle |
| **Power save** | One-tap: lower Hz, kill blur, stricter doze |
| **AOD** | Off or black + dim clock only |
| **Idle dim** | Faster screen timeout defaults (sane, not hostile) |
| **Thermal link** | Hot → UI can suggest lower Hz (no nag spam) |
| **About battery** | Honest tips: dark wallpaper, limit 120Hz when not needed |

### Flavor mapping

| Flavor | UI / battery focus |
|--------|--------------------|
| **Vanilla** | Dark brand only + pure black defaults |
| **Plus** | Charge limit, RR tile, GameSpace light, AOD options |
| **Privacy** | Same dark shell + privacy tools |

---

## Screens to design first

1. **Lock screen** — black wallpaper, dim clock, no bright widgets by default  
2. **Home** — black empty regions; sparse dock  
3. **QS** — glass-dark tiles, cyan active  
4. **Settings home** — black list, brand accent only on selected  
5. **Battery settings** — charge limit + tips (BestROM signature page)  
6. **SetupWizard** — 3–5 dark steps, zero light splash  
7. **Boot animation** — black-led  

---

## Do / Don’t

| Do | Don’t |
|----|--------|
| `#000000` as default background | Ship light theme as equal default |
| Small cyan/violet accents | Full-screen neon gradients all day |
| High contrast text on black | Pure gray walls of text / low contrast mush |
| Dim charging / boot | White flash boot logos |
| Pair UI with charge limit & RR | UI dark but force 120Hz + max brightness forever |
| Credit AOSP / maintainers | Claim HyperOS stock look |
| Optional extras as flavors | Bake root / random bright mod packs |

---

## Engineering hooks (when trees exist)

```
vendor/bestrom/
  overlay/          # force dark accents, black surfaces where RRO allows
  config/common.mk  # wallpaper, bootanim, props
  prebuilt/         # pure-black wallpapers
  # later: Settings battery page, charge limit, SystemUI theme
```

Suggested props / product intent (names illustrative):

- Default night mode / dark  
- Black boot animation package  
- Product wallpaper: pure black pack  
- Optional: `config_defaultRefreshRate` thrifty default on device  

Exact flags land with device bring-up — design owns **intent**, device owns **values**.

---

## Asset map

```
brand/
  logo/bestrom-icon.jpg
  banner/github-banner.jpg
  wallpaper/bestrom-amoled.jpg   # push toward pure black + sparse aurora
design/
  DESIGN_SYSTEM.md               # this file
  tokens.css
docs/
  FEATURES.md                    # battery UI checklist
  COMPLETE_ROM_ROADMAP.md
  BATTERY_UI.md                  # UX spec deep-dive
```
