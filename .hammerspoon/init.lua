function switch_to_app(number, apps)
    hs.hotkey.bind({ "cmd", "alt", "ctrl" }, number, function()
        for i = 1, #apps do
            local is_found = hs.application.launchOrFocus(apps[i])
            if is_found then
                break
            end
        end
    end)
end

switch_to_app("g", { "Telegram" })
switch_to_app("t", { "Ghostty", "Alacritty" })
switch_to_app("z", { "Zed" })
switch_to_app("c", { "Google Chrome" })
switch_to_app("o", { "Outline" })
switch_to_app("m", { "Thunderbird" })
switch_to_app("n", { "Notes" })
switch_to_app("f", { "Finder" })
