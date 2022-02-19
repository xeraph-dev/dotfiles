module Theme where

import Termonad.Config
  ( Option (Set),
  )
import Termonad.Config.Colour
  ( AlphaColour,
    ColourConfig,
    Palette (ExtendedPalette),
    backgroundColour,
    createColour,
    cursorBgColour,
    cursorFgColour,
    defaultColourConfig,
    foregroundColour,
    palette,
    unsafeMkList8,
  )

background = normalBlack

foreground = normalWhite

normalBlack = createColour 24 26 31

brightBlack = createColour 92 99 112

normalWhite = createColour 171 178 191

brightWhite = createColour 255 255 255

red = createColour 224 108 117

green = createColour 152 195 121

yellow = createColour 209 154 102

blue = createColour 97 175 239

magenta = createColour 198 120 221

cyan = createColour 86 182 194

standardColours = unsafeMkList8 [normalBlack, red, green, yellow, blue, magenta, cyan, normalWhite]

highIntensityColours = unsafeMkList8 [brightBlack, red, green, yellow, blue, magenta, cyan, brightWhite]

colourConfig :: ColourConfig (AlphaColour Double)
colourConfig =
  defaultColourConfig
    { cursorFgColour = Set background,
      cursorBgColour = Set foreground,
      foregroundColour = Set foreground,
      backgroundColour = Set background,
      palette = ExtendedPalette standardColours highIntensityColours
    }
