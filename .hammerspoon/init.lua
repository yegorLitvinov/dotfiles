function switch_to_app(app_name, number)
    hs.hotkey.bind({ "cmd", "alt" }, number, function()
        local app = hs.application.find(app_name)
        if app then
            app:activate()
        else
            hs.application.launchOrFocus(app_name)
        end
    end)
end

switch_to_app("Google Chrome", "4")
switch_to_app("Zed", "3")
switch_to_app("Terminal", "2")
switch_to_app("Telegram", "1")
switch_to_app("Outline", "5")
