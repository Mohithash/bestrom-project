# BestROM — Battery-first UI / UX

**Product decision:** BestROM is built so **dark UI + thrifty defaults** maximize **battery** on AMOLED (peridot first).

This is not a theme pack. It is the **product identity**.

---

## Principle

> If a pixel is lit, it must earn its place.

| Layer | Battery job |
|-------|-------------|
| **Visual** | True black `#000000` canvas, sparse accents |
| **Interaction** | Fewer bright interruptions (no white wizards) |
| **System** | Charge limit, refresh thrift, power-save that actually dims UI cost |
| **Software cost** | No heavy skins / always-on blur that burn GPU |

Full design tokens: [`design/DESIGN_SYSTEM.md`](../design/DESIGN_SYSTEM.md)

---

## UX pillars

### 1. Dark is not a mode — it is the product

- Settings, SystemUI, SetupWizard, QS: **dark by default**
- Light theme is **not** a BestROM marketing goal
- Dynamic color / Material You: clamp to **dark schemes only** when we control them

### 2. Pure black over “Material gray”

- Wallpaper empty space → `#000000`
- Notification shade empty → black
- Settings root → black
- Cards may use `#0A0A0A` only for separation

### 3. Accents are status, not decoration

| State | Color |
|-------|-------|
| Neutral icons | muted / mist |
| Active / on | cyan `#22D3EE` |
| Primary CTA | violet `#7C3AED` |
| Warning | rose (small chips) |
| Battery healthy | green (small) |

Never paint entire settings pages in violet.

### 4. Battery settings is a signature surface

BestROM **About battery** / **Battery care** should feel first-class:

1. **Charge limit** (80 / 85 / 90 / 100) — clear copy: *Protects battery health*  
2. **Refresh rate** — 60 / auto / 120 with honest “uses more power” labels  
3. **Screen timeout** — sensible default  
4. **AOD** — Off recommended; On = black + dim clock only  
5. **Tips** — dark wallpaper, lower Hz when idle, avoid bright apps full-screen white  

### 5. Power save must change the *look* of cost

When user enables Power save / Super save:

| Action | UI |
|--------|----|
| Drop refresh | Prefer 60 Hz |
| Kill decorative blur | QS glass → solid black |
| Dim max brightness cap | Device policy |
| Reduce motion | No boot-loop style animations |

If Power save only kills apps and the screen stays bright white apps, we failed the product story (we still default dark shell).

---

## Screen specs (MVP)

### Lock screen
- Wallpaper: pure black pack  
- Clock: mist, not pure white blast  
- No busy bright widgets by default  

### Home / launcher
- Empty regions black  
- Icon labels muted  
- Folder sheets dark  

### Quick Settings
- Black scrim  
- Inactive tiles: low luminance  
- Active: cyan outline / fill spark  
- No rainbow tile skins  

### Settings
- Black list background  
- Dividers near-black  
- Switches: cyan track when on  
- BestROM brand only in About / Battery care  

### SetupWizard
- 100% dark pages  
- One primary violet button  
- Skip paths obvious — no white “welcome” cardboard  

### Boot
- Black frames; short violet pulse; wordmark  
- Target: no multi-second white OEM logo if we control the animation  

---

## Acceptance checklist (ship quality)

- [ ] Default theme dark after first boot  
- [ ] Default wallpaper pure black / aurora-black  
- [ ] SetupWizard has zero light full-bleed pages  
- [ ] QS and shade do not flash white on expand  
- [ ] Battery care page ships with charge limit (Plus+)  
- [ ] Power save disables blur / thrift Hz when we own hooks  
- [ ] Boot animation average luminance low  
- [ ] Docs / marketing say **battery-first dark** explicitly  

---

## Non-goals

- Matching HyperOS / MIUI light aesthetic  
- Colorful “gamer RGB” system UI  
- Equal dual light+dark skin development early on  
- Always-on bright edge lighting  

---

## Related

- [DESIGN_SYSTEM.md](../design/DESIGN_SYSTEM.md)  
- [FEATURES.md](FEATURES.md)  
- [COMPLETE_ROM_ROADMAP.md](COMPLETE_ROM_ROADMAP.md)  
