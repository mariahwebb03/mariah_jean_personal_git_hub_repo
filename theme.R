# ── ggplot2 themes for the personal portfolio ────────────────────────────────
# Three themes that match the three CSS themes in styles.css. On any page, use
# the theme + scale that matches that page's `body-classes`:
#
#   Page body-class      ggplot theme        discrete scales
#   -----------------    ----------------    -----------------------------------
#   (none / default)     theme_parchment()   scale_color_parchment() / _fill_
#   theme-navy           theme_navy()        scale_color_navy()      / _fill_
#   theme-dark           theme_dark()        scale_color_dark()      / _fill_
#
# Each plot.background is set to that theme's CSS card color (--surface) so the
# plot sits flush inside its figure card. Source this file at the top of a .qmd:
#   source("theme.R")          # from the project root
#   source("../theme.R")       # from a week/project subfolder
# ─────────────────────────────────────────────────────────────────────────────


# ══ PARCHMENT (default) ══════════════════════════════════════════════════════
# NOTE: plot.background here is WHITE (#FFFFFF) to match the white figure cards
# on the personal site. (Your DS350 theme.R used #FBF6EE parchment margins — the
# only intentional difference.)
theme_parchment <- function() {
  theme_bw() +
    theme(
      plot.background   = element_rect(fill = "#FFFFFF", color = NA),
      panel.background  = element_rect(fill = "#FFFFFF", color = "#E2D0BC"),
      panel.grid.major  = element_line(color = "#E2D0BC", linewidth = 0.4),
      panel.grid.minor  = element_line(color = "#F5E8D4", linewidth = 0.2),
      panel.border      = element_rect(color = "#E2D0BC", fill = NA),

      plot.title        = element_text(family = "serif", color = "#B5722A",
                                       size = 14, face = "plain", margin = margin(b = 6)),
      plot.subtitle     = element_text(family = "serif", color = "#6B4226",
                                       size = 11, margin = margin(b = 10)),
      plot.caption      = element_text(color = "#9E6B45", size = 9, hjust = 1),

      axis.title        = element_text(color = "#6B4226", size = 10),
      axis.text         = element_text(color = "#6B4226", size = 9),
      axis.ticks        = element_line(color = "#E2D0BC"),

      legend.background = element_rect(fill = "#FFFFFF", color = "#E2D0BC"),
      legend.key        = element_rect(fill = "#FFFFFF"),
      legend.title      = element_text(color = "#6B4226", size = 10),
      legend.text       = element_text(color = "#2E1A0E", size = 9),

      strip.background  = element_rect(fill = "#F5E8D4", color = "#E2D0BC"),
      strip.text        = element_text(color = "#B5722A", family = "serif", size = 10)
    )
}

scale_color_parchment <- function(...) {
  scale_color_manual(values = c(
    "#B5722A", "#6B4226", "#D4956A", "#2E1A0E",
    "#9E6B45", "#E2D0BC", "#8B5520", "#F5E8D4"
  ), ...)
}
scale_fill_parchment <- function(...) {
  scale_fill_manual(values = c(
    "#B5722A", "#6B4226", "#D4956A", "#2E1A0E",
    "#9E6B45", "#E2D0BC", "#8B5520", "#F5E8D4"
  ), ...)
}


# ══ NAVY & BRASS ═════════════════════════════════════════════════════════════
theme_navy <- function() {
  theme_bw() +
    theme(
      plot.background   = element_rect(fill = "#FFFFFF", color = NA),
      panel.background  = element_rect(fill = "#FFFFFF", color = "#E4E0D6"),
      panel.grid.major  = element_line(color = "#E4E0D6", linewidth = 0.4),
      panel.grid.minor  = element_line(color = "#F0EDE4", linewidth = 0.2),
      panel.border      = element_rect(color = "#E4E0D6", fill = NA),

      plot.title        = element_text(family = "serif", color = "#23374D",
                                       size = 14, face = "plain", margin = margin(b = 6)),
      plot.subtitle     = element_text(family = "serif", color = "#3E4A57",
                                       size = 11, margin = margin(b = 10)),
      plot.caption      = element_text(color = "#6B7480", size = 9, hjust = 1),

      axis.title        = element_text(color = "#3E4A57", size = 10),
      axis.text         = element_text(color = "#3E4A57", size = 9),
      axis.ticks        = element_line(color = "#E4E0D6"),

      legend.background = element_rect(fill = "#FFFFFF", color = "#E4E0D6"),
      legend.key        = element_rect(fill = "#FFFFFF"),
      legend.title      = element_text(color = "#3E4A57", size = 10),
      legend.text       = element_text(color = "#2E3742", size = 9),

      strip.background  = element_rect(fill = "#EEEAE1", color = "#E4E0D6"),
      strip.text        = element_text(color = "#23374D", family = "serif", size = 10)
    )
}

scale_color_navy <- function(...) {
  scale_color_manual(values = c(
    "#23374D", "#B08D57", "#3E5871", "#C9A876",
    "#6E521F", "#8FA6BC", "#5A4522", "#1A2A3A"
  ), ...)
}
scale_fill_navy <- function(...) {
  scale_fill_manual(values = c(
    "#23374D", "#B08D57", "#3E5871", "#C9A876",
    "#6E521F", "#8FA6BC", "#5A4522", "#1A2A3A"
  ), ...)
}


# ══ WARM DARK ════════════════════════════════════════════════════════════════
# If a thin white edge appears around a dark plot when rendered, add this chunk
# option to that figure:  #| dev.args: !expr list(bg = "transparent")
theme_dark <- function() {
  theme_bw() +
    theme(
      plot.background   = element_rect(fill = "#2B2622", color = NA),
      panel.background  = element_rect(fill = "#211E1A", color = "#3A342E"),
      panel.grid.major  = element_line(color = "#3A342E", linewidth = 0.4),
      panel.grid.minor  = element_line(color = "#2E2A25", linewidth = 0.2),
      panel.border      = element_rect(color = "#3A342E", fill = NA),

      plot.title        = element_text(family = "serif", color = "#E0A15C",
                                       size = 14, face = "plain", margin = margin(b = 6)),
      plot.subtitle     = element_text(family = "serif", color = "#D9C7AC",
                                       size = 11, margin = margin(b = 10)),
      plot.caption      = element_text(color = "#9E9079", size = 9, hjust = 1),

      axis.title        = element_text(color = "#C6B79E", size = 10),
      axis.text         = element_text(color = "#C6B79E", size = 9),
      axis.ticks        = element_line(color = "#3A342E"),

      legend.background = element_rect(fill = "#2B2622", color = "#3A342E"),
      legend.key        = element_rect(fill = "#2B2622"),
      legend.title      = element_text(color = "#C6B79E", size = 10),
      legend.text       = element_text(color = "#EDE3D3", size = 9),

      strip.background  = element_rect(fill = "#211E1A", color = "#3A342E"),
      strip.text        = element_text(color = "#E0A15C", family = "serif", size = 10)
    )
}

scale_color_dark <- function(...) {
  scale_color_manual(values = c(
    "#E0A15C", "#C77B44", "#EBC79A", "#B5722A",
    "#8FB0A8", "#D98C5F", "#A88F6A", "#F0D9B5"
  ), ...)
}
scale_fill_dark <- function(...) {
  scale_fill_manual(values = c(
    "#E0A15C", "#C77B44", "#EBC79A", "#B5722A",
    "#8FB0A8", "#D98C5F", "#A88F6A", "#F0D9B5"
  ), ...)
}
