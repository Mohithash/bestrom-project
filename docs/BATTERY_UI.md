# BestROM — Battery-first UI / UX

**Philosophy:** [PHILOSOPHY.md](PHILOSOPHY.md)

Battery is the **most important feature**. UI is not decoration — it is part of the power budget. Cosmetics that burn GPU or light up AMOLED without purpose do not ship as defaults.

---

## Principle

> If a pixel is lit, it must earn its place.  
> If the compositor is busy, it must serve fluidity — not theater.

| Layer | Job |
|-------|-----|
| **Visual** | True black `#000000`, sparse accents |
| **Motion** | Short, cheap; no forever animations |
| **System** | Charge limit, RR thrift, power-save that cuts *cost* |
| **Stack** | AOSP-compliant product layer — no heavy skin tax |

Design tokens: [DESIGN_SYSTEM.md](../design/DESIGN_SYSTEM.md)

---

## UX pillars

### 1. Pure dark by default (non‑negotiable)
Settings, SystemUI, Setup, QS, wallpaper: **pure dark from first boot**.  
Light theme is **not** a v1 product goal. Dual light/dark parity is **not** a goal.

### 2. Pure black over Material gray (and over “minimal” light)
Wallpaper, shade empty regions, Settings root → **`#000000`**.  
Cards may use `#0A0A0A` only for separation — never light gray panels as brand default.  
Pure dark defaults are **better for battery** than light chrome or soft-gray dark skins.

### 3. Accents are status
| State | Color |
|-------|-------|
| Neutral | muted / mist |
| Active / on | cyan |
| Primary CTA | violet |
| Battery healthy | green (small chips) |

### 4. Battery care is signature
1. Charge limit (80 / 85 / 90 / 100)  
2. Refresh rate with honest power labels  
3. Sensible screen timeout  
4. AOD: off recommended  
5. Tips: dark wallpaper, thrift Hz, avoid bright full-screen white apps  

### 5. Power save changes cost
| Action | UI |
|--------|-----|
| Prefer 60 Hz | Yes |
| Kill decorative blur | Solid black QS |
| Cap brightness | Device policy |
| Reduce motion | No loop animations |

---

## Screen MVP

| Screen | Spec |
|--------|------|
| Lock | Black wallpaper, dim clock |
| Home | Black empty regions |
| QS | Black scrim, cyan active |
| Settings | Black lists |
| Setup | 100% dark pages |
| Boot | Black-led |

---

## Acceptance

- [ ] Dark after first boot  
- [ ] Pure black default wallpaper  
- [ ] No light SetupWizard pages  
- [ ] QS does not flash white  
- [ ] Battery care (Plus+) with charge limit  
- [ ] Power save thrifts UI cost  
- [ ] Boot average luminance low  

## Non-goals

HyperOS-like light chrome · RGB gamer system UI · dual light+dark parity early · bright edge light theater
