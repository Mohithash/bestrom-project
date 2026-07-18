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
| Animation for show | Short, purposeful motion |
| Artwork walls & bright chrome | Pure black AMOLED canvas |
| Placebo toggles | Honest thrifty controls |
| Everything-maxed defaults | Daily-driver sanity |

## One line

> *Less cosmetic tax. More battery. More smoothness. Still Android — pure AOSP 17.*

## Related

- [DESIGN_SYSTEM.md](../design/DESIGN_SYSTEM.md)  
- [BATTERY_UI.md](BATTERY_UI.md)  
- [FEATURES.md](FEATURES.md)  
