local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Colorschemes
-- config.color_scheme = 'Catppuccin Mocha'
-- config.color_scheme = 'Grape'
config.color_scheme = 'Kanagawa (Gogh)'
-- config.color_scheme = 'Gruvbox dark, hard (base16)'
-- config.color_scheme = 'Gruvbox dark, pale (base16)'

-- Background Settings
-- config.window_background_opacity = 0.9
config.text_background_opacity = 0.3
config.macos_window_background_blur = 20

-- Fonts
-- config.font = wezterm.font 'FiraCode Nerd Font'
-- config.font = wezterm.font 'Monaspace Krypton'
config.font = wezterm.font 'Monaspace Neon'
-- config.font = wezterm.font 'Monaspace Argon'
-- config.font = wezterm.font 'Monaspace Xenon'
-- config.font = wezterm.font 'Monaspace Radon'

-- Disable the tabs because tmux
config.enable_tab_bar = false

return config
