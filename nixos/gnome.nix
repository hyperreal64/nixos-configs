{ config, pkgs, ... }:

{
    # GNOME services
	services.gnome = {
        gnome-keyring.enable = true;
        chrome-gnome-shell.enable = true;
	};

    # Enable Seahorse
    programs.seahorse.enable = true;

	# Xserver config
	services = {
		xserver = {
			enable = true;
			layout = "us";
            displayManager.gdm.enable = true;
            displayManager.gdm.autoSuspend = false;
			desktopManager.gnome.enable = true;
		};

		accounts-daemon.enable = true;

		dbus.packages = [ pkgs.gnome.dconf ];
		udev.packages = [ pkgs.gnome.gnome-settings-daemon ];
	};

    # Build GSE wrappers for Firefox
    nixpkgs.config.firefox.enableGnomeExtensions = true;

    # Enable GNOME keyring at login for user
	security.pam.services."jas".enableGnomeKeyring = true;
}
