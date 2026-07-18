# BestROM — Dot type

**Nothing OS–like:** ultra minimal · **black + grey dots only**.

---

## Allowed colors (hard rule)

| Allowed | Hex | Use |
|---------|-----|-----|
| **Black** | `#000000` | All backgrounds, empty space |
| **Grey dots** | `#6B7280` · `#9CA3AF` · `#D1D5DB` | Letter dots only (dim → mid → bright) |

**Forbidden in brand art and BestROM chrome:** violet, cyan, blue, green, red, neon, gold, gradients of hue.

System status (errors, battery % bars) may use platform defaults when Android requires it — **brand identity stays monochrome.**

---

## Why grey dots on black

| Solid white logo | Grey dots on black |
|------------------|--------------------|
| Large lit area | Small lit dots only |
| Harsh on AMOLED | Softer, thriftier |
| Generic app blob | Nothing-like quiet mark |

---

## Grid rules

| Rule | Spec |
|------|------|
| Canvas | Always `#000000` |
| Dot fill | Greys only — never pure white flood of the whole letter as a solid shape |
| Grid | Regular matrix, round dots |
| Weight | Sparse — black shows through the letter |
| Brand letters | **B** / **BESTROM** as dots only |
| Body UI text | Solid grey (`#D1D5DB` / `#9CA3AF`) for readability — not dotted paragraphs |

---

## Surfaces

| Surface | Treatment |
|---------|-----------|
| Icon | Grey-dotted **B** on black |
| Banner | Grey-dotted mark, vast black |
| Wallpaper | Whisper grey dots or faint B |
| Boot | Grey dots assemble on black — short |
| About | Small grey dotted mark |

## Motion

Fade/assemble grey dots 200–400ms. No color cycles. Power save: static.

## Do / Don’t

| Do | Don’t |
|----|--------|
| Black + grey only | Violet / cyan accents |
| Dotted B | Solid filled multicolor logos |
| Empty black margin | Busy colored art |

See [DESIGN_SYSTEM.md](DESIGN_SYSTEM.md)
