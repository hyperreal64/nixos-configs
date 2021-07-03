{ config, lib, pkgs, ... }:

{
    networking.networkmanager.enable = true;
    services.clipmenu.enable = true;

    services.xserver = {
        enable = true;
        layout = "us";
        windowManager.openbox.enable = true;
        displayManager.gdm.enable = true;
        displayManager.defaultSession = "none+openbox";
    };

    environment.systemPackages = with pkgs; [
        clipit
        dunst
        gsimplecal
        lxappearance
        networkmanagerapplet
        nitrogen
        obconf
        openbox
        openbox-menu
        pavucontrol
        picom
        qalculate-gtk
        ranger
        rofi
        rofi-calc
	rofi-emoji
	rofi-power-menu
        sxhkd
        tint2
        xdotool
        xfce.thunar
        xfce.thunar-archive-plugin
        xfce.thunar-volman
        xfce.xfce4-power-manager
        xorg.xset
        xorg.xsetroot
        zathura
    ];
    
    # Enable GNOME Keyring for user
    services.gnome.gnome-keyring.enable = true;
    security.pam.services."jas".enableGnomeKeyring = true;
}
