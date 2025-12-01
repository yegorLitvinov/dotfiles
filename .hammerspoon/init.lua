function switch_to_app(keys, apps)
    for key_index = 1, #keys do
        hs.hotkey.bind({ "cmd", "alt", "ctrl" }, keys[key_index], function()
            for app_index = 1, #apps do
                local is_found = hs.application.launchOrFocus(apps[app_index])
                if is_found then
                    break
                end
            end
        end)
    end
end

switch_to_app({ "e", "у" }, { "Notes" })
switch_to_app({ "r", "к" }, { "Finder" })
switch_to_app({ "t", "е" }, { "Outline" })
switch_to_app({ "a", "ф" }, { "Thunderbird" })
switch_to_app({ "s", "ы" }, { "Ghostty", "Alacritty" })
switch_to_app({ "d", "в" }, { "Zed" })
switch_to_app({ "f", "а" }, { "Google Chrome" })
switch_to_app({ "g", "п" }, { "Telegram" })
