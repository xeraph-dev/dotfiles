{-# LANGUAGE OverloadedStrings #-}

module Main where

import Termonad.App (defaultMain)
import Termonad.Config
  ( defaultConfigOptions
  , defaultFontConfig
  , defaultTMConfig
  , fontConfig
  , FontConfig
  , fontFamily
  , fontSize
  , FontSize(FontSizePoints)
  , options
  , showTabBar
  , ShowTabBar(ShowTabBarNever)
  , showScrollbar
  , ShowScrollbar(ShowScrollbarNever)
  , confirmExit
  , showMenu
  , cursorBlinkMode
  , CursorBlinkMode(CursorBlinkModeOff)
  , boldIsBright
  , Option(Set)
  , TMConfig
  )
import Termonad.Config.Colour
  ( defaultColourConfig
  , AlphaColour
  , ColourConfig
  , addColourExtension
  , createColour
  , createColourExtension
  , cursorBgColour
  , backgroundColour
  )

-- Theme
blackColour         = createColour  40  44  52
tblackColour        = createColour  33  36  43
whiteColour         = createColour 171 178 191
lightRedColour      = createColour 224 108 117
darkRedColour       = createColour 190  80  70
greenColour         = createColour 152 195 121
lightYellowColour   = createColour 229 192 123
darkYellowColour    = createColour 209 154 102
blueColour          = createColour  97 175 239
magentaColour       = createColour 198 120 221
cyanColour          = createColour  86 182 194
gutterGreyColour    = createColour  76  82  99
commentGreyColour   = createColour  92  99 112

colConf :: ColourConfig (AlphaColour Double)
colConf =
  defaultColourConfig
    { cursorBgColour    = Set darkYellowColour
    , backgroundColour  = Set tblackColour
    }

fontConf :: FontConfig
fontConf =
  defaultFontConfig
    { fontFamily    = "JetBrainsMono Nerd Font"
    , fontSize      = FontSizePoints 11
    }

tmConfig :: TMConfig
tmConfig =
  defaultTMConfig
    { options =
        defaultConfigOptions
          { fontConfig        = fontConf
          , showScrollbar     = ShowScrollbarNever
          , confirmExit       = False
          , showMenu          = False
          , cursorBlinkMode   = CursorBlinkModeOff
          , boldIsBright      = True
          }
    }


main :: IO ()
main = do
  colExt <- createColourExtension colConf
  let termonadConf = addColourExtension tmConfig colExt
  defaultMain termonadConf
