{-# LANGUAGE OverloadedStrings #-}

module Main where

import Termonad.App (defaultMain)
import Termonad.Config
  ( CursorBlinkMode (CursorBlinkModeOff),
    FontConfig,
    FontSize (FontSizePoints),
    ShowScrollbar (ShowScrollbarNever),
    ShowTabBar (ShowTabBarNever),
    TMConfig,
    boldIsBright,
    confirmExit,
    cursorBlinkMode,
    defaultConfigOptions,
    defaultFontConfig,
    defaultTMConfig,
    fontConfig,
    fontFamily,
    fontSize,
    options,
    showMenu,
    showScrollbar,
    showTabBar,
  )
import Termonad.Config.Colour
  ( addColourExtension,
    createColourExtension,
  )
import Theme
  ( colourConfig,
  )

fontConf :: FontConfig
fontConf =
  defaultFontConfig
    { fontFamily = "JetBrainsMono Nerd Font",
      fontSize = FontSizePoints 11
    }

tmConfig :: TMConfig
tmConfig =
  defaultTMConfig
    { options =
        defaultConfigOptions
          { fontConfig = fontConf,
            showScrollbar = ShowScrollbarNever,
            confirmExit = False,
            showMenu = False,
            cursorBlinkMode = CursorBlinkModeOff,
            boldIsBright = True
          }
    }

main :: IO ()
main = do
  colExt <- createColourExtension colourConfig
  let termonadConf = addColourExtension tmConfig colExt
  defaultMain termonadConf
