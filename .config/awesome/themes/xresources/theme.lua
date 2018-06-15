---------------------------------------------
-- Awesome theme which follows xrdb config --
--   by Yauhen Kirylau                    --
---------------------------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local xrdb = xresources.get_current_theme()
local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

-- inherit default theme
local theme = dofile(themes_path.."default/theme.lua")
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/xresources"

-- load vector assets' generators for this theme

theme.font                  = "SF Pro Display Semibold 10"

theme.bg_normal             = xrdb.background
theme.bg_focus              = xrdb.color12
theme.bg_urgent             = xrdb.color9
theme.bg_minimize           = xrdb.color8
theme.bg_systray            = theme.bg_normal

theme.fg_normal             = xrdb.foreground
theme.fg_focus              = theme.bg_normal
theme.fg_urgent             = theme.bg_normal
theme.fg_minimize           = theme.bg_normal

theme.useless_gap           = dpi(14)
theme.border_width          = dpi(4)
theme.tasklist_spacing      = dpi(3)
theme.border_normal         = xrdb.color0
theme.border_focus          = theme.bg_focus
theme.border_marked         = xrdb.color10

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

theme.tooltip_fg = theme.fg_normal
theme.tooltip_bg = theme.bg_normal

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]

theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.awesome_icon                              = theme.dir .. "/icons/awesome.png"

theme.layout_cascadetile                        = theme.dir .. "/layouts/cascadetile.png"
theme.layout_centerwork                         = theme.dir .. "/layouts/centerwork.png"
theme.layout_cornerne                           = theme.dir .. "/layouts/cornerne.png"
theme.layout_cornernw                           = theme.dir .. "/layouts/cornernw.png"
theme.layout_cornerse                           = theme.dir .. "/layouts/cornerse.png"
theme.layout_cornersw                           = theme.dir .. "/layouts/cornersw.png"
theme.layout_dwindle                            = theme.dir .. "/layouts/dwindle.png"
theme.layout_fairh                              = theme.dir .. "/layouts/fairh.png"
theme.layout_fairv                              = theme.dir .. "/layouts/fairv.png"
theme.layout_floating                           = theme.dir .. "/layouts/floating.png"
theme.layout_fullscreen                         = theme.dir .. "/layouts/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/layouts/magnifier.png"
theme.layout_max                                = theme.dir .. "/layouts/max.png"
theme.layout_spiral                             = theme.dir .. "/layouts/spiral.png"
theme.layout_tile                               = theme.dir .. "/layouts/tile.png"
theme.layout_tilebottom                         = theme.dir .. "/layouts/tilebottom.png"
theme.layout_tileleft                           = theme.dir .. "/layouts/tileleft.png"
theme.layout_tiletop                            = theme.dir .. "/layouts/tiletop.png"

theme.widget_ac                                 = theme.dir .. "/icons/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/battery.png"
theme.widget_battery_low                        = theme.dir .. "/icons/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/battery_empty.png"
theme.widget_mem                                = theme.dir .. "/icons/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/temp.png"
theme.widget_pacman                             = theme.dir .. "/icons/pacman.png"
theme.widget_users                              = theme.dir .. "/icons/user.png"
theme.widget_net                                = theme.dir .. "/icons/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/hdd.png"
theme.widget_music                              = theme.dir .. "/icons/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/note_on.png"
theme.widget_music_pause                        = theme.dir .. "/icons/pause.png"
theme.widget_music_stop                         = theme.dir .. "/icons/stop.png"
theme.widget_vol                                = theme.dir .. "/icons/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/vol_mute.png"
theme.widget_mail                               = theme.dir .. "/icons/mail.png"
theme.widget_mail_on                            = theme.dir .. "/icons/mail_on.png"
theme.widget_task                               = theme.dir .. "/icons/task.png"
theme.widget_scissors                           = theme.dir .. "/icons/scissors.png"

theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar_light/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar_light/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar_light/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar_light/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar_light/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar_light/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar_light/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar_light/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar_light/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar_light/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar_light/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar_light/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar_light/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar_light/floating_normal_inactive.png"
theme.titlebar_minimize_button_focus_active     = theme.dir .. "/icons/titlebar_light/minimized_focus_active.png"
theme.titlebar_minimize_button_normal_active    = theme.dir .. "/icons/titlebar_light/minimized_normal_active.png"
theme.titlebar_minimize_button_focus_inactive   = theme.dir .. "/icons/titlebar_light/minimized_focus_inactive.png"
theme.titlebar_minimize_button_normal_inactive  = theme.dir .. "/icons/titlebar_light/minimized_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar_light/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar_light/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar_light/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar_light/maximized_normal_inactive.png"


theme.menu_height = dpi(16)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Recolor Layout icons:
theme = theme_assets.recolor_layout(theme, theme.fg_normal)

-- Recolor titlebar icons:
--
local function darker(color_value, darker_n)
    local result = "#"
    for s in color_value:gmatch("[a-fA-F0-9][a-fA-F0-9]") do
        local bg_numeric_value = tonumber("0x"..s) - darker_n
        if bg_numeric_value < 0 then bg_numeric_value = 0 end
        if bg_numeric_value > 255 then bg_numeric_value = 255 end
        result = result .. string.format("%2.2x", bg_numeric_value)
    end
    return result
end
theme = theme_assets.recolor_titlebar(
    theme, theme.fg_normal, "normal"
)
theme = theme_assets.recolor_titlebar(
    theme, darker(theme.fg_normal, -60), "normal", "hover"
)
theme = theme_assets.recolor_titlebar(
    theme, xrdb.color1, "normal", "press"
)
theme = theme_assets.recolor_titlebar(
    theme, theme.fg_focus, "focus"
)
theme = theme_assets.recolor_titlebar(
    theme, darker(theme.fg_focus, -60), "focus", "hover"
)
theme = theme_assets.recolor_titlebar(
    theme, xrdb.color1, "focus", "press"
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Try to determine if we are running light or dark colorscheme:
local bg_numberic_value = 0;
for s in theme.bg_normal:gmatch("[a-fA-F0-9][a-fA-F0-9]") do
    bg_numberic_value = bg_numberic_value + tonumber("0x"..s);
end
local is_dark_bg = (bg_numberic_value < 383)

-- Generate wallpaper:
local wallpaper_bg = xrdb.color8
local wallpaper_fg = xrdb.color7
local wallpaper_alt_fg = xrdb.color12
if not is_dark_bg then
    wallpaper_bg, wallpaper_fg = wallpaper_fg, wallpaper_bg
end
theme.wallpaper = function(s)
    return theme_assets.wallpaper(wallpaper_bg, wallpaper_fg, wallpaper_alt_fg, s)
end

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
