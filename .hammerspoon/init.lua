local MODS = { "cmd", "alt", "ctrl" }

local function switch_to_app(usKey, apps)
  local keycode = hs.keycodes.map[usKey] -- layout-independent keycode
  hs.hotkey.bind(MODS, keycode, function()
    for i = 1, #apps do
      if hs.application.launchOrFocus(apps[i]) then break end
    end
  end)
end

switch_to_app("e", { "Notes" })
switch_to_app("r", { "Finder" })
switch_to_app("t", { "Outline" })
switch_to_app("a", { "Thunderbird" })
switch_to_app("s", { "Ghostty", "Alacritty" })
switch_to_app("d", { "Zed" })
switch_to_app("f", { "Google Chrome" })
switch_to_app("g", { "Telegram" })

-- Quick time player shortcut
hs.hotkey.bind({"cmd","alt","ctrl"}, hs.keycodes.map["q"], function()
  hs.application.launchOrFocus("QuickTime Player")

  local function go()
    local app = hs.appfinder.appFromName("QuickTime Player")
    if not app then return end
    app:activate(true)

    -- 1) Dismiss the startup "Open" window/dialog
    -- Cmd+W closes the front window; Cmd+. cancels common dialogs
    -- hs.eventtap.keyStroke({"cmd"}, hs.keycodes.map["w"], app)
    hs.eventtap.keyStroke({"cmd"}, ".", app)

    -- 2) Now trigger File → New Screen Recording (QuickTime shortcut)
    hs.timer.doAfter(0.1, function()
      hs.eventtap.keyStroke({"cmd","ctrl"}, "n", app)
    end)
  end

  -- QuickTime needs a moment to fully show the Open window
  hs.timer.doAfter(0.1, go)
end)
