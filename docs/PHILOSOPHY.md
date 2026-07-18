# BestROM — Design Philosophy

**Battery is the most important feature.**

---

## The problem with modern Android

Too much of today’s software budget is spent on:

- Cosmetic **skins**
- Endless **animations**
- Heavy **artworks**
- Feature checklists for marketing
- **Placebo** “optimizations” that look good in a trailer

That tax is not free. It steals **smoothness**, **fluidity**, and the **battery juice** people need for a real day.

| What gets spent | What you lose |
|-----------------|---------------|
| GPU / compositor on flashy UI | Frame consistency |
| Always-on visual noise | Fluid multitasking |
| Bright chrome & effects | Hours of battery |
| Bloated exclusives | Stability & AOSP clarity |

## Our answer

**BestROM** is pure **AOSP Android 17**, built as a **daily driver** that prioritizes:

1. **Battery** — first constraint, not an afterthought  
2. **Smoothness** — light system, not motion that hides jank  
3. **AOSP compliance** — maintainable Android, not a one-off skin fork  

We are building toward one of the **first custom ROMs on Android 17** whose promise is not “more chrome” — it is:

> **Best battery + real smoothness — without the cosmetic tax.**

## Pure dark by default (non‑negotiable)

**Every surface ships pure dark.** Not “dark gray Material,” not a light theme with a night toggle, not dual skins we half-maintain.

| Default | Spec |
|---------|------|
| Canvas | **`#000000` pure black** (AMOLED pixels off) |
| Theme | **Dark only** as the product |
| Wallpaper | Pure black pack |
| Setup / Settings / QS | Black backgrounds from first boot |
| Accents | Tiny violet/cyan *sparks* — never bright full screens |

**Why pure black beats “pretty dark gray” and light “minimal” UIs:** on OLED, lit gray still costs power. Restraint that still paints the panel light is incomplete restraint.

We admire **product restraint** (few features, clear identity) — but BestROM goes further for battery: **pure dark backgrounds and designs by default**, so the software matches AMOLED hardware. Less light in the UI is not a theme option; it is the brand.

> *Pure dark by default. Better for battery than light skins, gray “minimal,” or cosmetic nothing.*

## Three questions (every default)

Before something ships as a **default**:

1. Does this **help battery** (or at least not hurt it)?  
2. Does this keep the system **smooth and fluid** under real use?  
3. Is it still **AOSP-compliant** and maintainable?

If the answer is only “it looks cool,” it does not ship as default.

## Refuse / build

| We refuse | We build |
|-----------|----------|
| Heavy cosmetic skins | Pure AOSP 17 base |
| Light / dual themes as equal defaults | **Pure dark only** product UI |
| Gray “Material dark” walls | **True black** `#000000` canvas |
| Animation for show | Short, purposeful motion |
| Artwork walls & bright chrome | Sparse sparks on black |
| Placebo toggles | Honest thrifty controls |
| Everything-maxed defaults | Daily-driver sanity |

## One line

> *Pure dark by default. Less cosmetic tax. More battery. More smoothness. Still Android — pure AOSP 17.*

## Related

- [DESIGN_SYSTEM.md](../design/DESIGN_SYSTEM.md)  
- [BATTERY_UI.md](BATTERY_UI.md)  
- [FEATURES.md](FEATURES.md)  
