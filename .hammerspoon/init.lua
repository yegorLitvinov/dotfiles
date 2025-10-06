function switch_to_app(number, apps)
    hs.hotkey.bind({ "cmd", "alt" }, number, function()
        for i = 1, #apps do
            local is_found = hs.application.launchOrFocus(apps[i])
            if is_found then
                break
            end
        end
    end)
end

switch_to_app("1", { "Telegram" })
switch_to_app("2", { "Ghostty", "Alacritty" })
switch_to_app("3", { "Zed" })
switch_to_app("4", { "Google Chrome" })
switch_to_app("5", { "Outline" })
