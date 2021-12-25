local wezterm = require 'wezterm';

return {
  font = wezterm.font({
    family="JetBrainsMono Nerd Font",
    harfbuzz_features={"calt=1", "clig=1", "liga=1"},
  }),
  color_scheme = "Batman",
  window_padding = {
    left    = 10,
    right   = 10,
    top     = 10,
    bottom  = 10,
  },

  disable_default_key_bindigs = true,
  keys = {
    -- Pane
    {key="<", mods="CTRL", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    {key=">", mods="CTRL", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="w", mods="CTRL", action=wezterm.action{CloseCurrentPane={confirm=false}}},
    {key="LeftArrow", mods="CTRL|ALT", action=wezterm.action{AdjustPaneSize={"Left", 5}}},
    {key="RightArrow", mods="CTRL|ALT", action=wezterm.action{AdjustPaneSize={"Right", 5}}},
    {key="UpArrow", mods="CTRL|ALT", action=wezterm.action{AdjustPaneSize={"Up", 5}}},
    {key="DownArrow", mods="CTRL|ALT", action=wezterm.action{AdjustPaneSize={"Down", 5}}},
    {key="LeftArrow", mods="CTRL", action=wezterm.action{ActivatePaneDirection="Left"}},
    {key="RightArrow", mods="CTRL", action=wezterm.action{ActivatePaneDirection="Right"}},
    {key="UpArrow", mods="CTRL", action=wezterm.action{ActivatePaneDirection="Up"}},
    {key="DownArrow", mods="CTRL", action=wezterm.action{ActivatePaneDirection="Down"}},



    -- Tab
    {key="t", mods="CTRL", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
    {key="W", mods="CTRL", action=wezterm.action{CloseCurrentTab={confirm=false}}},
    {key="{", mods="ALT", action=wezterm.action{MoveTabRelative=-1}},
    {key="}", mods="ALT", action=wezterm.action{MoveTabRelative=1}},
    {key="{", mods="CTRL", action=wezterm.action{ActivateTabRelative=-1}},
    {key="}", mods="CTRL", action=wezterm.action{ActivateTabRelative=1}},

    -- Copy and Paste
    {key="C", mods="CTRL", action=wezterm.action{CopyTo="ClipboardAndPrimarySelection"}},
    {key="V", mods="CTRL", action=wezterm.action{PasteFrom="Clipboard"}},

    -- Window
    {key="-", mods="CTRL", action="DecreaseFontSize"},
    {key="=", mods="CTRL", action="IncreaseFontSize"},
    {key="0", mods="CTRL", action="ResetFontSize"},
    {key="UpArrow", mods="SHIFT", action=wezterm.action{ScrollByLine=-1}},
    {key="DownArrow", mods="SHIFT", action=wezterm.action{ScrollByLine=1}},
    {key="PageUp", mods="SHIFT", action=wezterm.action{ScrollByPage=-1}},
    {key="PageDown", mods="SHIFT", action=wezterm.action{ScrollByPage=1}},

    -- App
    {key="r", mods="CTRL|SHIFT", action="ReloadConfiguration"},
  },
}
