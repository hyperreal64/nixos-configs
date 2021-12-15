{ config, pkgs, callPackage, ... }:

{
    nixpkgs.config.pulseaudio = true;

    services.xserver = {
        enable = true;
        desktopManager = {
            xterm.enable = false;
            xfce.enable = true;
        };
        displayManager = {
            gdm.enable = true;
            defaultSession = "xfce";
        };
    };

    services.xserver.desktopManager.xfce = {
        thunarPlugins = [ pkgs.xfce.thunar-archive-plugin pkgs.xfce.thunar-volman ];
    };

    environment.systemPackages = with pkgs; [
        dmenu
	pavucontrol
        ranger
        rofi
        rofi-file-browser
        rofi-power-menu
        xdotool
	xfce.xfce4-pulseaudio-plugin
	xfce.xfce4-cpugraph-plugin
	xfce.xfce4-whiskermenu-plugin
        xfce.xfce4-genmon-plugin
        xfce.xfce4-weather-plugin
        xfce.xfce4-clipman-plugin
        xfce.xfce4-battery-plugin
        xorg.xset
        xorg.xsetroot
        zathura
    ];
}
