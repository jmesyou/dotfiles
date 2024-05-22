-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Tokyo Night'
config.font         = wezterm.font_with_fallback {
  'Fira Code',
  'Fira Mono',
  'JetBrains Mono',
}

config.font_size    = 12.0

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  -- We are running on Windows; maybe we emit different
  -- key assignments here?
  config.default_prog = { 'pwsh.exe' }
end

-- and finally, return the configuration to wezterm
return config

