local MODS = { "cmd", "alt", "ctrl" }

local function switch_to_app(usKey, apps)
    local keycode = hs.keycodes.map[usKey] -- layout-independent keycode
    hs.hotkey.bind(MODS, keycode, function()
        for i = 1, #apps do
            if hs.application.launchOrFocus(apps[i]) then break end
        end
    end)
end

switch_to_app("r", { "Finder" })
switch_to_app("t", { "AmneziaVPN" })
switch_to_app("a", { "Thunderbird" })
switch_to_app("s", { "Ghostty", "Alacritty" })
switch_to_app("d", { "Zed" })
switch_to_app("f", { "Google Chrome" })
switch_to_app("g", { "Telegram" })
