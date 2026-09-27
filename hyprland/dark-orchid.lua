-- Dark Orchid — a Hyprland theme
--
-- Copyright (c) 2026 — present by The Dark Orchid Maintainers
-- Released under the MIT License — see LICENSE at the repository root.

-- The palette: every ramp, every stop, written in the notation Hyprland's own
-- colour parser reads, so a value goes straight into any colour option and into
-- the `colors` list of a gradient. A ramp is a table keyed by the stop number,
-- so a stop is written `palette.zinc[700]`.
local palette = {
  none  = "rgba(00000000)", -- none
  white = "rgb(ffffff)",    -- white
  black = "rgb(000000)",    -- black

  brand = {
    [50]   = "rgb(f1e6ff)", -- brand-50
    [100]  = "rgb(e3ccff)", -- brand-100
    [200]  = "rgb(c799ff)", -- brand-200
    [300]  = "rgb(ab66ff)", -- brand-300
    [400]  = "rgb(8f33ff)", -- brand-400
    [500]  = "rgb(7300ff)", -- brand-500
    [600]  = "rgb(5c00cc)", -- brand-600
    [700]  = "rgb(450099)", -- brand-700
    [800]  = "rgb(2e0066)", -- brand-800
    [900]  = "rgb(170033)", -- brand-900
    [950]  = "rgb(0c001a)", -- brand-950
  },

  slate = {
    [50]   = "rgb(f8fafc)", -- slate-50
    [100]  = "rgb(f1f5f9)", -- slate-100
    [200]  = "rgb(e2e8f0)", -- slate-200
    [300]  = "rgb(cbd5e1)", -- slate-300
    [400]  = "rgb(94a3b8)", -- slate-400
    [500]  = "rgb(64748b)", -- slate-500
    [600]  = "rgb(475569)", -- slate-600
    [700]  = "rgb(334155)", -- slate-700
    [800]  = "rgb(1e293b)", -- slate-800
    [900]  = "rgb(0f172a)", -- slate-900
    [950]  = "rgb(020617)", -- slate-950
  },

  gray = {
    [50]   = "rgb(f9fafb)", -- gray-50
    [100]  = "rgb(f3f4f6)", -- gray-100
    [200]  = "rgb(e5e7eb)", -- gray-200
    [300]  = "rgb(d1d5db)", -- gray-300
    [400]  = "rgb(9ca3af)", -- gray-400
    [500]  = "rgb(6b7280)", -- gray-500
    [600]  = "rgb(4b5563)", -- gray-600
    [700]  = "rgb(374151)", -- gray-700
    [800]  = "rgb(1f2937)", -- gray-800
    [900]  = "rgb(111827)", -- gray-900
    [950]  = "rgb(030712)", -- gray-950
  },

  zinc = {
    [50]   = "rgb(fafafa)", -- zinc-50
    [100]  = "rgb(f4f4f5)", -- zinc-100
    [200]  = "rgb(e4e4e7)", -- zinc-200
    [300]  = "rgb(d4d4d8)", -- zinc-300
    [400]  = "rgb(a1a1aa)", -- zinc-400
    [500]  = "rgb(71717a)", -- zinc-500
    [600]  = "rgb(52525b)", -- zinc-600
    [700]  = "rgb(3f3f46)", -- zinc-700
    [800]  = "rgb(27272a)", -- zinc-800
    [900]  = "rgb(18181b)", -- zinc-900
    [950]  = "rgb(09090b)", -- zinc-950
  },

  neutral = {
    [50]   = "rgb(fafafa)", -- neutral-50
    [100]  = "rgb(f5f5f5)", -- neutral-100
    [200]  = "rgb(e5e5e5)", -- neutral-200
    [300]  = "rgb(d4d4d4)", -- neutral-300
    [400]  = "rgb(a3a3a3)", -- neutral-400
    [500]  = "rgb(737373)", -- neutral-500
    [600]  = "rgb(525252)", -- neutral-600
    [700]  = "rgb(404040)", -- neutral-700
    [800]  = "rgb(262626)", -- neutral-800
    [900]  = "rgb(171717)", -- neutral-900
    [950]  = "rgb(0a0a0a)", -- neutral-950
  },

  stone = {
    [50]   = "rgb(fafaf9)", -- stone-50
    [100]  = "rgb(f5f5f4)", -- stone-100
    [200]  = "rgb(e7e5e4)", -- stone-200
    [300]  = "rgb(d6d3d1)", -- stone-300
    [400]  = "rgb(a8a29e)", -- stone-400
    [500]  = "rgb(78716c)", -- stone-500
    [600]  = "rgb(57534e)", -- stone-600
    [700]  = "rgb(44403c)", -- stone-700
    [800]  = "rgb(292524)", -- stone-800
    [900]  = "rgb(1c1917)", -- stone-900
    [950]  = "rgb(0c0a09)", -- stone-950
  },

  red = {
    [50]   = "rgb(fef2f2)", -- red-50
    [100]  = "rgb(fee2e2)", -- red-100
    [200]  = "rgb(fecaca)", -- red-200
    [300]  = "rgb(fca5a5)", -- red-300
    [400]  = "rgb(f87171)", -- red-400
    [500]  = "rgb(ef4444)", -- red-500
    [600]  = "rgb(dc2626)", -- red-600
    [700]  = "rgb(b91c1c)", -- red-700
    [800]  = "rgb(991b1b)", -- red-800
    [900]  = "rgb(7f1d1d)", -- red-900
    [950]  = "rgb(450a0a)", -- red-950
  },

  orange = {
    [50]   = "rgb(fff7ed)", -- orange-50
    [100]  = "rgb(ffedd5)", -- orange-100
    [200]  = "rgb(fed7aa)", -- orange-200
    [300]  = "rgb(fdba74)", -- orange-300
    [400]  = "rgb(fb923c)", -- orange-400
    [500]  = "rgb(f97316)", -- orange-500
    [600]  = "rgb(ea580c)", -- orange-600
    [700]  = "rgb(c2410c)", -- orange-700
    [800]  = "rgb(9a3412)", -- orange-800
    [900]  = "rgb(7c2d12)", -- orange-900
    [950]  = "rgb(431407)", -- orange-950
  },

  amber = {
    [50]   = "rgb(fffbeb)", -- amber-50
    [100]  = "rgb(fef3c7)", -- amber-100
    [200]  = "rgb(fde68a)", -- amber-200
    [300]  = "rgb(fcd34d)", -- amber-300
    [400]  = "rgb(fbbf24)", -- amber-400
    [500]  = "rgb(f59e0b)", -- amber-500
    [600]  = "rgb(d97706)", -- amber-600
    [700]  = "rgb(b45309)", -- amber-700
    [800]  = "rgb(92400e)", -- amber-800
    [900]  = "rgb(78350f)", -- amber-900
    [950]  = "rgb(451a03)", -- amber-950
  },

  yellow = {
    [50]   = "rgb(fefce8)", -- yellow-50
    [100]  = "rgb(fef9c3)", -- yellow-100
    [200]  = "rgb(fef08a)", -- yellow-200
    [300]  = "rgb(fde047)", -- yellow-300
    [400]  = "rgb(facc15)", -- yellow-400
    [500]  = "rgb(eab308)", -- yellow-500
    [600]  = "rgb(ca8a04)", -- yellow-600
    [700]  = "rgb(a16207)", -- yellow-700
    [800]  = "rgb(854d0e)", -- yellow-800
    [900]  = "rgb(713f12)", -- yellow-900
    [950]  = "rgb(422006)", -- yellow-950
  },

  lime = {
    [50]   = "rgb(f7fee7)", -- lime-50
    [100]  = "rgb(ecfccb)", -- lime-100
    [200]  = "rgb(d9f99d)", -- lime-200
    [300]  = "rgb(bef264)", -- lime-300
    [400]  = "rgb(a3e635)", -- lime-400
    [500]  = "rgb(84cc16)", -- lime-500
    [600]  = "rgb(65a30d)", -- lime-600
    [700]  = "rgb(4d7c0f)", -- lime-700
    [800]  = "rgb(3f6212)", -- lime-800
    [900]  = "rgb(365314)", -- lime-900
    [950]  = "rgb(1a2e05)", -- lime-950
  },

  green = {
    [50]   = "rgb(f0fdf4)", -- green-50
    [100]  = "rgb(dcfce7)", -- green-100
    [200]  = "rgb(bbf7d0)", -- green-200
    [300]  = "rgb(86efac)", -- green-300
    [400]  = "rgb(4ade80)", -- green-400
    [500]  = "rgb(22c55e)", -- green-500
    [600]  = "rgb(16a34a)", -- green-600
    [700]  = "rgb(15803d)", -- green-700
    [800]  = "rgb(166534)", -- green-800
    [900]  = "rgb(14532d)", -- green-900
    [950]  = "rgb(052e16)", -- green-950
  },

  emerald = {
    [50]   = "rgb(ecfdf5)", -- emerald-50
    [100]  = "rgb(d1fae5)", -- emerald-100
    [200]  = "rgb(a7f3d0)", -- emerald-200
    [300]  = "rgb(6ee7b7)", -- emerald-300
    [400]  = "rgb(34d399)", -- emerald-400
    [500]  = "rgb(10b981)", -- emerald-500
    [600]  = "rgb(059669)", -- emerald-600
    [700]  = "rgb(047857)", -- emerald-700
    [800]  = "rgb(065f46)", -- emerald-800
    [900]  = "rgb(064e3b)", -- emerald-900
    [950]  = "rgb(022c22)", -- emerald-950
  },

  teal = {
    [50]   = "rgb(f0fdfa)", -- teal-50
    [100]  = "rgb(ccfbf1)", -- teal-100
    [200]  = "rgb(99f6e4)", -- teal-200
    [300]  = "rgb(5eead4)", -- teal-300
    [400]  = "rgb(2dd4bf)", -- teal-400
    [500]  = "rgb(14b8a6)", -- teal-500
    [600]  = "rgb(0d9488)", -- teal-600
    [700]  = "rgb(0f766e)", -- teal-700
    [800]  = "rgb(115e59)", -- teal-800
    [900]  = "rgb(134e4a)", -- teal-900
    [950]  = "rgb(042f2e)", -- teal-950
  },

  cyan = {
    [50]   = "rgb(ecfeff)", -- cyan-50
    [100]  = "rgb(cffafe)", -- cyan-100
    [200]  = "rgb(a5f3fc)", -- cyan-200
    [300]  = "rgb(67e8f9)", -- cyan-300
    [400]  = "rgb(22d3ee)", -- cyan-400
    [500]  = "rgb(06b6d4)", -- cyan-500
    [600]  = "rgb(0891b2)", -- cyan-600
    [700]  = "rgb(0e7490)", -- cyan-700
    [800]  = "rgb(155e75)", -- cyan-800
    [900]  = "rgb(164e63)", -- cyan-900
    [950]  = "rgb(083344)", -- cyan-950
  },

  sky = {
    [50]   = "rgb(f0f9ff)", -- sky-50
    [100]  = "rgb(e0f2fe)", -- sky-100
    [200]  = "rgb(bae6fd)", -- sky-200
    [300]  = "rgb(7dd3fc)", -- sky-300
    [400]  = "rgb(38bdf8)", -- sky-400
    [500]  = "rgb(0ea5e9)", -- sky-500
    [600]  = "rgb(0284c7)", -- sky-600
    [700]  = "rgb(0369a1)", -- sky-700
    [800]  = "rgb(075985)", -- sky-800
    [900]  = "rgb(0c4a6e)", -- sky-900
    [950]  = "rgb(082f49)", -- sky-950
  },

  blue = {
    [50]   = "rgb(eff6ff)", -- blue-50
    [100]  = "rgb(dbeafe)", -- blue-100
    [200]  = "rgb(bfdbfe)", -- blue-200
    [300]  = "rgb(93c5fd)", -- blue-300
    [400]  = "rgb(60a5fa)", -- blue-400
    [500]  = "rgb(3b82f6)", -- blue-500
    [600]  = "rgb(2563eb)", -- blue-600
    [700]  = "rgb(1d4ed8)", -- blue-700
    [800]  = "rgb(1e40af)", -- blue-800
    [900]  = "rgb(1e3a8a)", -- blue-900
    [950]  = "rgb(172554)", -- blue-950
  },

  indigo = {
    [50]   = "rgb(eef2ff)", -- indigo-50
    [100]  = "rgb(e0e7ff)", -- indigo-100
    [200]  = "rgb(c7d2fe)", -- indigo-200
    [300]  = "rgb(a5b4fc)", -- indigo-300
    [400]  = "rgb(818cf8)", -- indigo-400
    [500]  = "rgb(6366f1)", -- indigo-500
    [600]  = "rgb(4f46e5)", -- indigo-600
    [700]  = "rgb(4338ca)", -- indigo-700
    [800]  = "rgb(3730a3)", -- indigo-800
    [900]  = "rgb(312e81)", -- indigo-900
    [950]  = "rgb(1e1b4b)", -- indigo-950
  },

  violet = {
    [50]   = "rgb(f5f3ff)", -- violet-50
    [100]  = "rgb(ede9fe)", -- violet-100
    [200]  = "rgb(ddd6fe)", -- violet-200
    [300]  = "rgb(c4b5fd)", -- violet-300
    [400]  = "rgb(a78bfa)", -- violet-400
    [500]  = "rgb(8b5cf6)", -- violet-500
    [600]  = "rgb(7c3aed)", -- violet-600
    [700]  = "rgb(6d28d9)", -- violet-700
    [800]  = "rgb(5b21b6)", -- violet-800
    [900]  = "rgb(4c1d95)", -- violet-900
    [950]  = "rgb(2e1065)", -- violet-950
  },

  purple = {
    [50]   = "rgb(faf5ff)", -- purple-50
    [100]  = "rgb(f3e8ff)", -- purple-100
    [200]  = "rgb(e9d5ff)", -- purple-200
    [300]  = "rgb(d8b4fe)", -- purple-300
    [400]  = "rgb(c084fc)", -- purple-400
    [500]  = "rgb(a855f7)", -- purple-500
    [600]  = "rgb(9333ea)", -- purple-600
    [700]  = "rgb(7e22ce)", -- purple-700
    [800]  = "rgb(6b21a8)", -- purple-800
    [900]  = "rgb(581c87)", -- purple-900
    [950]  = "rgb(3b0764)", -- purple-950
  },

  fuchsia = {
    [50]   = "rgb(fdf4ff)", -- fuchsia-50
    [100]  = "rgb(fae8ff)", -- fuchsia-100
    [200]  = "rgb(f5d0fe)", -- fuchsia-200
    [300]  = "rgb(f0abfc)", -- fuchsia-300
    [400]  = "rgb(e879f9)", -- fuchsia-400
    [500]  = "rgb(d946ef)", -- fuchsia-500
    [600]  = "rgb(c026d3)", -- fuchsia-600
    [700]  = "rgb(a21caf)", -- fuchsia-700
    [800]  = "rgb(86198f)", -- fuchsia-800
    [900]  = "rgb(701a75)", -- fuchsia-900
    [950]  = "rgb(4a044e)", -- fuchsia-950
  },

  pink = {
    [50]   = "rgb(fdf2f8)", -- pink-50
    [100]  = "rgb(fce7f3)", -- pink-100
    [200]  = "rgb(fbcfe8)", -- pink-200
    [300]  = "rgb(f9a8d4)", -- pink-300
    [400]  = "rgb(f472b6)", -- pink-400
    [500]  = "rgb(ec4899)", -- pink-500
    [600]  = "rgb(db2777)", -- pink-600
    [700]  = "rgb(be185d)", -- pink-700
    [800]  = "rgb(9d174d)", -- pink-800
    [900]  = "rgb(831843)", -- pink-900
    [950]  = "rgb(500724)", -- pink-950
  },

  rose = {
    [50]   = "rgb(fff1f2)", -- rose-50
    [100]  = "rgb(ffe4e6)", -- rose-100
    [200]  = "rgb(fecdd3)", -- rose-200
    [300]  = "rgb(fda4af)", -- rose-300
    [400]  = "rgb(fb7185)", -- rose-400
    [500]  = "rgb(f43f5e)", -- rose-500
    [600]  = "rgb(e11d48)", -- rose-600
    [700]  = "rgb(be123c)", -- rose-700
    [800]  = "rgb(9f1239)", -- rose-800
    [900]  = "rgb(881337)", -- rose-900
    [950]  = "rgb(4c0519)", -- rose-950
  },
}

-- The tokens: what the colours above are *for*. A token name that carries a
-- hyphen is written with an underscore here, because a hyphen cannot appear in
-- a Lua identifier.
local tokens = {
  -- Accent — what is lit: the focused frame, the active tab, the marked item.
  -- Every one of these comes from the one purple ramp.
  accent         = palette.brand[500], -- accent
  on_accent      = palette.black,           -- on-accent
  accent_bright  = palette.brand[300], -- deprecated — accent text takes `accent`
  accent_lit     = palette.brand[400], -- accent-lit
  accent_dim     = palette.brand[600], -- accent-dim
  accent_peak    = palette.brand[200], -- accent-peak
  accent_surface = palette.brand[800], -- accent-surface

  -- Neutral — the greys the rest of the interface is built from, stacked
  -- darkest to lightest. A surface that has to differ from its neighbour moves
  -- along this ramp rather than into another hue.
  bg              = palette.zinc[950],        -- bg
  bg_tinted       = palette.brand[950],       -- bg-tinted
  bg_alt          = palette.zinc[900],        -- bg-alt
  surface         = palette.zinc[800],        -- surface
  border          = palette.zinc[700],        -- border
  selection_muted = palette.zinc[700],        -- selection-muted
  fg_faint        = palette.zinc[600],        -- fg-faint
  fg_muted        = palette.zinc[500],        -- fg-muted
  fg              = palette.zinc[300],        -- fg
  fg_strong       = palette.zinc[100],        -- fg-strong
  on_cursor       = palette.zinc[900],        -- on-cursor

  -- Status — indicators and underlines. Where a status has to be readable
  -- running text, move up the same ramp to the 300 stop.
  error           = palette.red[600],    -- error
  warning         = palette.yellow[600], -- warning
  success         = palette.green[600],  -- success
  info            = palette.blue[600],   -- info
  hint            = palette.zinc[500],   -- hint
  error_underline = palette.red[900],    -- error-underline

  -- Depth — one gradient for nesting that has to stay legible. Take the stops
  -- in order and stop when the interface runs out of levels.
  depth_1 = palette.brand[300], -- depth-1
  depth_2 = palette.violet[400],     -- depth-2
  depth_3 = palette.purple[400],     -- depth-3
  depth_4 = palette.fuchsia[300],    -- depth-4
  depth_5 = palette.pink[300],       -- depth-5
  depth_6 = palette.blue[300],       -- depth-6

  -- Overlay — a token above at an opacity, never a colour of its own. These are
  -- the only values carrying an alpha channel.
  overlay_hover   = "rgba(7300ff24)", -- overlay-hover — accent at 14%
  overlay_active  = "rgba(7300ff3d)", -- overlay-active — accent at 24%
  scrim           = "rgba(09090b8c)", -- scrim — bg at 55%
  scrim_strong    = "rgba(09090bcc)", -- scrim-strong — bg at 80%
  bg_translucent  = "rgba(09090bd9)", -- bg-translucent — bg at 85%

  -- Syntax — for anything that renders code or markup. These hues are not
  -- accents, so the rule that purple is the only accent does not reach them.
  syn_comment  = palette.zinc[500],    -- syn-comment
  syn_string   = palette.green[300],   -- syn-string
  syn_function = palette.blue[300],    -- syn-function
  syn_keyword  = palette.violet[400],  -- syn-keyword
  syn_type     = palette.cyan[200],    -- syn-type
  syn_storage  = palette.purple[400],  -- syn-storage
  syn_property = palette.fuchsia[300], -- syn-property
  syn_text     = palette.zinc[300],    -- syn-text
  syn_tag      = palette.pink[300],    -- syn-tag
  syn_todo     = palette.blue[400],    -- syn-todo
  syn_link     = palette.blue[300],    -- syn-link
}

return {
  palette = palette,
  tokens = tokens,
}
