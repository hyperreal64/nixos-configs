# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
    imports =
        [    ./boot/default.nix
             ./cachix-config/default.nix
             ./environment/default.nix
             ./fontconfig/default.nix
             ./gnome/default.nix
             ./hardware/default.nix
             ./networking/default.nix
             # ./nvidia/default.nix
             ./nvidia/external.nix
             # ./openbox/default.nix
             # ./xfce/default.nix
        ];

    # Enable sound
    sound.enable = true;
  
    # Configure sudo to allow no password for user jas
    security.sudo.extraRules = [{
        users = [ "jas" ];
        commands = [{
            command = "ALL";
            options = [ "SETENV" "NOPASSWD" ];
        }];
    }];

    # Timezone for Chicago/US Central
    time = {
        timeZone = "America/Chicago";
        hardwareClockInLocalTime = true;
    };

    # Locale for US English UTF
    i18n.defaultLocale = "en_US.UTF-8";

    # Nix daemon config
    nix = {
        # Automate `nix-store --optimize`
        autoOptimiseStore = true;

        # Automate garbage collection
        gc = {
            automatic = true;
            dates = "weekly";
            options = "--delete-older-than 7d";
        };
        trustedUsers = [ "root" "jas" ];
    };

    # This value determines the NixOS release from which the default
    # settings for stateful data, like file locations and database versions
    # on your system were taken. It‘s perfectly fine and recommended to leave
    # this value at the release version of the first install of this system.
    # Before changing this value read the documentation for this option
    # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
    system.stateVersion = "21.05"; # Did you read the comment?
}

