# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

let
  mkTuple = lib.hm.gvariant.mkTuple;
in
{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/shell/extensions/";
      saved-view = "/org/gnome/shell/extensions/";
      show-warning = false;
      window-height = 500;
      window-is-maximized = false;
      window-width = 540;
    };

    "com/gexperts/Tilix" = {
      auto-hide-mouse = true;
      copy-on-select = true;
      paste-strip-first-char = true;
      paste-strip-trailing-whitespace = true;
      quake-height-percent = 80;
      quake-specific-monitor = 0;
      unsafe-paste-alert = false;
      warn-vte-config-issue = false;
      window-style = "disable-csd-hide-toolbar";
    };

    "com/gexperts/Tilix/profiles" = {
      default = "0d1fec1c-3c44-4f00-ac41-510ed2122b44";
      list = [ "2b7c4080-0ddd-46c5-8f23-563fd3ba789d" "7d6cfb5a-5f5f-4518-8923-fd79b29139d2" "0d1fec1c-3c44-4f00-ac41-510ed2122b44" ];
    };

    "com/gexperts/Tilix/profiles/0d1fec1c-3c44-4f00-ac41-510ed2122b44" = {
      allow-bold = true;
      background-color = "#24241f1f3333";
      bold-color = "#d1d1cacae8e8";
      bold-color-same-as-fg = true;
      cursor-background-color = "#d1d1cacae8e8";
      cursor-colors-set = true;
      cursor-foreground-color = "#24241f1f3333";
      font = "JetBrainsMono Nerd Font Mono 12";
      foreground-color = "#d1d1cacae8e8";
      palette = [ "#2f2f29294242" "#ffff85857f7f" "#4848b6b68585" "#e6e6c0c00000" "#aeae8181ffff" "#efef61615555" "#c2c2ffffdfdf" "#f8f8f8f8f2f2" "#757550507b7b" "#f1f156568e8e" "#5a5adbdba2a2" "#d5d5a4a42525" "#c5c5a3a3ffff" "#efef61615555" "#c2c2ffffffff" "#f8f8f8f8f0f0" ];
      scroll-on-output = true;
      terminal-bell = "none";
      use-system-font = false;
      use-theme-background = false;
      use-theme-colors = false;
      use-theme-transparency = false;
      visible-name = "Pixiefloss";
    };

    "com/gexperts/Tilix/profiles/2b7c4080-0ddd-46c5-8f23-563fd3ba789d" = {
      font = "JetBrainsMono Nerd Font Mono 12";
      terminal-bell = "none";
      use-system-font = false;
      visible-name = "Default";
    };

    "com/gexperts/Tilix/profiles/7d6cfb5a-5f5f-4518-8923-fd79b29139d2" = {
      background-color = "#1D1D1C1C3131";
      font = "iMWritingMonoS Nerd Font 11";
      foreground-color = "#CBCBE3E3E7E7";
      notify-silence-enabled = false;
      notify-silence-threshold = 0;
      palette = [ "#585852527373" "#F0F02D2D6E6E" "#6161D1D19696" "#F2F2B4B48282" "#6363B1B1FFFF" "#A3A37A7ACCCC" "#6262F2F2F0F0" "#8A8A88889D9D" "#1D1D1C1C3131" "#F4F48F8FB1B1" "#A1A1EFEFD3D3" "#FFFFE6E6B3B3" "#9191DDDDFFFF" "#D3D3BFBFFFFF" "#8787DEDEEBEB" "#CBCBE3E3E7E7" ];
      scroll-on-output = false;
      terminal-bell = "none";
      use-system-font = false;
      use-theme-colors = false;
      visible-name = "Unnamed";
    };

    "com/github/repsac-by/quake-mode" = {
      quake-mode-app = "kitty.desktop";
      quake-mode-height = 80;
      quake-mode-hotkey = [ "<Alt>z" ];
      quake-mode-width = 100;
    };

    "org/blueman/general" = {
      window-properties = [ 810 350 304 140 ];
    };

    "org/blueman/plugins/powermanager" = {
      auto-power-on = "@mb true";
    };

    "org/blueman/plugins/recentconns" = {
      recent-connections = ""[{'adapter': '80:32:53:F6:C6:7D', 'address': '20:18:06:00:A2:0D', 'alias': 'JLab Neon BT', 'icon': 'audio-card', 'name': 'Audio and input profiles', 'uuid': '00000000-0000-0000-0000-000000000000', 'time': '1625064103.8366506'}]"";
    };

    "org/gnome/baobab/ui" = {
      window-size = mkTuple [ 960 600 ];
      window-state = 87168;
    };

    "org/gnome/calculator" = {
      accuracy = 9;
      angle-units = "degrees";
      base = 10;
      button-mode = "basic";
      number-format = "automatic";
      show-thousands = false;
      show-zeroes = false;
      source-currency = "";
      source-units = "degree";
      target-currency = "";
      target-units = "radian";
      window-position = mkTuple [ 1 41 ];
      word-size = 64;
    };

    "org/gnome/control-center" = {
      last-panel = "bluetooth";
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" ];
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.eog.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      picture-options = "zoom";
      picture-uri = "file:///home/jas/onedrive/Pictures/wallpapers/scifi-fantasy/sunset.jpg";
    };

    "org/gnome/desktop/input-sources" = {
      per-window = false;
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" "lv3:ralt_switch" ];
    };

    "org/gnome/desktop/interface" = {
      clock-format = "12h";
      clock-show-weekday = true;
      cursor-theme = "Adwaita";
      document-font-name = "NotoSans Nerd Font 11";
      font-antialiasing = "rgba";
      font-hinting = "slight";
      font-name = "IBM Plex Sans 11";
      gtk-im-module = "gtk-im-context-simple";
      gtk-theme = "Dracula";
      icon-theme = "Marwaita-Dark";
      monospace-font-name = "JetBrainsMono Nerd Font Mono 11";
      show-battery-percentage = true;
      text-scaling-factor = 1.25;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "gnome-network-panel" "org-gnome-epiphany" "gnome-power-panel" "firefox" "org-gnome-nautilus" "org-sparkleshare-sparkleshare" "brave-browser" "org-gnome-screenshot" "org-gnome-software" "alacritty" ];
      show-in-lock-screen = false;
    };

    "org/gnome/desktop/notifications/application/alacritty" = {
      application-id = "Alacritty.desktop";
    };

    "org/gnome/desktop/notifications/application/brave-browser" = {
      application-id = "brave-browser.desktop";
    };

    "org/gnome/desktop/notifications/application/com-discordapp-discord" = {
      application-id = "com.discordapp.Discord.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-chromegnomeshell" = {
      application-id = "org.gnome.ChromeGnomeShell.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-epiphany" = {
      application-id = "org.gnome.Epiphany.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-extensions-desktop" = {
      application-id = "org.gnome.Extensions.desktop.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-screenshot" = {
      application-id = "org.gnome.Screenshot.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-software" = {
      application-id = "org.gnome.Software.desktop";
    };

    "org/gnome/desktop/notifications/application/org-sparkleshare-sparkleshare" = {
      application-id = "org.sparkleshare.SparkleShare.desktop";
    };

    "org/gnome/desktop/peripherals/mouse" = {
      speed = 0.544118;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      send-events = "disabled";
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      disable-camera = true;
      disable-microphone = false;
    };

    "org/gnome/desktop/screensaver" = {
      lock-delay = "uint32 0";
      lock-enabled = false;
      picture-uri = "file:///home/jas/onedrive/Pictures/wallpapers/scifi-fantasy/synthwave-tech.jpg";
    };

    "org/gnome/desktop/session" = {
      idle-delay = "uint32 300";
    };

    "org/gnome/desktop/sound" = {
      event-sounds = true;
      theme-name = "freedesktop";
    };

    "org/gnome/desktop/wm/keybindings" = {
      activate-window-menu = "@as []";
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
      titlebar-font = "NotoSans Nerd Font Semi-Bold 11";
    };

    "org/gnome/eog/view" = {
      background-color = "rgb(0,0,0)";
      use-background-color = true;
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = true;
      window-position = mkTuple [ 0 0 ];
      window-size = mkTuple [ 0 0 ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
      network-monitor-gio-name = "";
    };

    "org/gnome/gedit/plugins" = {
      active-plugins = [ "spell" "modelines" "filebrowser" "sort" "docinfo" ];
    };

    "org/gnome/gedit/preferences/ui" = {
      show-tabs-mode = "auto";
    };

    "org/gnome/gedit/state/window" = {
      bottom-panel-size = 140;
      side-panel-active-page = "GeditWindowDocumentsPanel";
      side-panel-size = 200;
      size = mkTuple [ 900 700 ];
      state = 87168;
    };

    "org/gnome/gnome-screenshot" = {
      delay = 3;
      include-pointer = false;
      last-save-directory = "file:///home/jas/onedrive/Pictures/Screenshots";
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      dynamic-workspaces = true;
      edge-tiling = true;
      focus-change-on-pointer-rest = true;
      workspaces-only-on-primary = true;
    };

    "org/gnome/nautilus/list-view" = {
      default-zoom-level = "standard";
      use-tree-view = true;
    };

    "org/gnome/nautilus/preferences" = {
      click-policy = "single";
      default-folder-viewer = "list-view";
      search-filter-time-type = "last_modified";
      search-view = "list-view";
      show-delete-permanently = false;
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 1070 793 ];
      maximized = false;
      sidebar-width = 220;
    };

    "org/gnome/nm-applet" = {
      disable-connected-notifications = true;
    };

    "org/gnome/nm-applet/eap/20733462-55d8-41c6-8750-804765215f5b" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/280b6a21-f889-4b85-94f8-993150ce4202" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/84cc83ad-17fb-4dc7-9817-d896462dea3f" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/ef691fc3-03c7-4565-acff-0cf4e07610a9" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/settings-daemon/plugins/power" = {
      idle-dim = false;
      sleep-inactive-ac-type = "nothing";
      sleep-inactive-battery-type = "nothing";
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;
      disabled-extensions = [ "dash-to-panel@jderose9.github.com" ];
      enabled-extensions = [ "blur-my-shell@aunetx" "appindicatorsupport@rgcjonas.gmail.com" "openweather-extension@jenslody.de" "unite@hardpixel.eu" "quake-mode@repsac-by.github.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "clipboard-indicator@tudmotu.com" "switcher@landau.fi" "hide-universal-access@akiirui.github.io" "kernel-indicator@elboulangero.gitlab.com" "tofumenu@tofu" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "org.gnome.tweaks.desktop" "com.discordapp.Discord.desktop" "code.desktop" "Alacritty.desktop" "firefox.desktop" ];
      had-bluetooth-devices-setup = false;
      welcome-dialog-last-shown-version = "40.1";
    };

    "org/gnome/shell/extensions/openweather" = {
      city = "42.1105779,-88.0336888>Palatine, Palatine Township, Cook County, Illinois, United States >-1";
      days-forecast = 2;
      decimal-places = 1;
      geolocation-provider = "openstreetmaps";
      position-in-panel = "center";
      pressure-unit = "inHg";
      show-comment-in-forecast = true;
      show-text-in-panel = true;
      translate-condition = true;
      unit = "fahrenheit";
      use-default-owm-key = true;
      use-symbolic-icons = true;
      weather-provider = "openweathermap";
      wind-direction = true;
      wind-speed-unit = "mph";
    };

    "org/gnome/shell/extensions/switcher" = {
      fade-enable = false;
      font-size = "uint32 24";
      icon-size = "uint32 24";
      max-width-percentage = "uint32 60";
      show-switcher = [ "<Alt>space" ];
    };

    "org/gnome/shell/extensions/unite" = {
      extend-left-box = false;
      hide-app-menu-icon = false;
      reduce-panel-spacing = false;
      window-buttons-placement = "left";
      window-buttons-theme = "vimix";
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "";
    };

    "org/gnome/shell/weather" = {
      automatic-location = true;
      locations = "@av []";
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/software" = {
      check-timestamp = "int64 1625923350";
      first-run = false;
      online-updates-timestamp = "int64 1624535205";
      update-notification-timestamp = "int64 1624535205";
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" = {
      audible-bell = false;
      font = "JetBrainsMono Nerd Font Mono 11";
      use-system-font = false;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 202;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-size = mkTuple [ 1045 380 ];
    };

    "org/gtk/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 0.796078 0.890196 ]) (mkTuple [ 0.933333 0.933333 ]) (mkTuple [ 0.541176 0.533333 ]) (mkTuple [ 0.827451 0.843137 ]) (mkTuple [ 0.529412 0.87451 ]) (mkTuple [ 0.203922 0.886275 ]) (mkTuple [ 0.388235 0.94902 ]) (mkTuple [ 2.3529e-2 0.594247 ]) ];
      selected-color = mkTuple [ true 0.796078 ];
    };

    "org/gtk/settings/file-chooser" = {
      clock-format = "12h";
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 192;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 14 27 ];
      window-size = mkTuple [ 1891 989 ];
    };

  };
}
