{ config, pkgs, ... }:

{
    # Make fonts accessible to applications
    fonts.fonts = with pkgs; [
        font-awesome-ttf
        nerdfonts
        noto-fonts
        noto-fonts-extra
    ];

    fonts.fontconfig = {
        antialias = true;
        hinting.autohint = false;
        hinting.enable = true;
        subpixel.lcdfilter = "default";
        subpixel.rgba = "rgb";

        defaultFonts = {
            serif = [ "Tinos" ];
            monospace = [ "Cousine" ];
            sansSerif = [ "Arimo" ];
        };
    };
}

