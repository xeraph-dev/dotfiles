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
  , TMConfig
  )
import Termonad.Config.Colour
  ( createColourExtension
  , addColourExtension)

import Theme
  ( colourConfig )

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
  colExt <- createColourExtension colourConfig
  let termonadConf = addColourExtension tmConfig colExt
  defaultMain termonadConf
